# 简介

GUN的假想失忆症机器（HAM）使用各种机制在算法上为数据提供数字同步性。

## 现有的机制与挑战

### 时间戳

一种这样的机制是使用时间戳。在这种情况下，用户的数据将包含时间戳，而订单的粗略近似可以基于这些时间戳。但使用时间戳时存在一些问题。一个问题是个人用户的计算机可能在其时钟上有轻微的变化，而在处理实时数据时这些数据看起来可能很小，因此可能会导致严重错误。另一个问题是，有些用户可能会故意尝试更改其数据的时间戳。

### 矢量时钟

另一种机制是使用矢量时钟1。在这种情况下，消息被给予指示操作顺序的“状态”度量。例如，如果Alice启动聊天服务器并发送消息，则可能会给出状态“A：1”，而她的下一个消息将被赋予状态“A：2”。但在爱丽丝发送第三条消息之前，她收到了鲍勃的消息。在Bob的消息中，他表示已收到Alice的状态“A：1”消息。虽然我们现在知道Alice的“A：1”消息是第一个，但我们不知道Alice的“A：2”还是Bob的“B：2”消息是第二还是第三。但是，如果有足够的同龄人正在收集和比较州，我们可以推断出大部分的订单。例如，如果查理在聆听爱丽丝和鲍勃的话，他可能能够指出在Alice的“A：2”消息之前收到Bob的“B：2”消息。不幸的是，就像在途中的人类一样，数据需要时间旅行，同侪之间的距离可能变化很大，特别是在互联网上，每个数据包可能采取不同的路径。

|      | 时间戳               | 矢量时钟         |
|:----:|:--------------------:|:----------------:|
| 利弊 | 内置于用户的机器     | 不依赖时钟       |
| 缺点 | 用户机器之间的不一致 | 冲突的可能性很高 |
|      | 受有意的用户更改影响 |                  |

### 冲突

除了数据的实际排序之外，这是可能的，并且在具有足够的数据传输的系统中，极有可能的是，数据实际上将在同一时刻发送。

### Gun 的假象失忆症机器(HAM)

GUN的HAM结合了时间戳，矢量时钟和冲突解决算法，可最大限度地提高数据的排序并始终解决发生的冲突。

```js

function HAM(machineState, incomingState, currentState, incomingValue, currentValue){
	if(machineState < incomingState){
		return {defer: true}; // the incoming value is outside the boundary of the machine's state, it must be reprocessed in another state.
	}
	if(incomingState < currentState){
		return {historical: true}; // the incoming value is within the boundary of the machine's state, but not within the range.

	}
	if(currentState < incomingState){
		return {converge: true, incoming: true}; // the incoming value is within both the boundary and the range of the machine's state.

	}
	if(incomingState === currentState){
		incomingValue = Lexical(incomingValue) || "";
		currentValue = Lexical(currentValue) || "";
		if(incomingValue === currentValue){ // Note: while these are practically the same, the deltas could be technically different
			return {state: true};
		}
		/*
			The following is a naive implementation, but will always work.
			Never change it unless you have specific needs that absolutely require it.
			If changed, your data will diverge unless you guarantee every peer's algorithm has also been changed to be the same.
			As a result, it is highly discouraged to modify despite the fact that it is naive,
			because convergence (data integrity) is generally more important.
			Any difference in this algorithm must be given a new and different name.
		*/
		if(incomingValue < currentValue){ // Lexical only works on simple value types!
			return {converge: true, current: true};
		}
		if(currentValue < incomingValue){ // Lexical only works on simple value types!
			return {converge: true, incoming: true};
		}
	}
	return {err: "Invalid CRDT Data: "+ incomingValue +" to "+ currentValue +" at "+ incomingState +" to "+ currentState +"!"};
}
if(typeof JSON === 'undefined'){
	throw new Error(
		'JSON is not included in this browser. Please load it first: ' +
		'ajax.cdnjs.com/ajax/libs/json2/20110223/json2.js'
	);
}
                                                                                             
```
