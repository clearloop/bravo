### 对等网络 ( peer-to-peer )
网络部分摘自 [<详解区块链网络>](https://keeganlee.me/post/blockchain/20180313)

又称点对点技术，是 [无中心服务器][无中心服务器]、依靠用户群（peers）交换信息的互联网体系，它的作用在于，减低以往网路传输中的节点，以降低资料遗失的风险。
[无中心服务器]:https://zh.wikipedia.org/wiki/%E5%8E%BB%E4%B8%AD%E5%BF%83%E5%8C%96


#### 根据中央化程度分类  
**纯 P2P**:

- 节点同时作为[客户端](https://zh.wikipedia.org/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF)和[服务器端](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AB%AF)。
- 没有中心[服务器](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8)。
- 没有中心[路由器](https://zh.wikipedia.org/wiki/%E8%B7%AF%E7%94%B1%E5%99%A8)。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

**杂 P2P**:

- 有一个中心服务器保存[节点](https://zh.wikipedia.org/wiki/%E8%8A%82%E7%82%B9)的信息并对请求这些信息的要求做出响应。
- 节点负责发布这些信息（因为中心服务器并不保存文件），让中心服务器知道它们想共享什么文件，让需要它的节点下载其可共享的资源。
- 路由终端使用地址，通过被一组[索引](https://zh.wikipedia.org/wiki/%E7%B4%A2%E5%BC%95)引用来取得绝对地址。
- 如最原始的[Napster](https://zh.wikipedia.org/wiki/Napster)。  

##### 混合 P2P
- 同时含有纯P2P和杂P2P的特点。
- 如[Skype](https://zh.wikipedia.org/wiki/Skype)。



#### 根据网路拓扑结构  

**结构 P2P**
- 点对点之间互有连结资讯，彼此形成特定规则拓扑结构。
- 需要请求某资源时，依该拓扑结构规则寻找，若存在则一定找得到。
- 如[Chord](https://zh.wikipedia.org/w/index.php?title=Chord&action=edit&redlink=1)、[YaCy](https://zh.wikipedia.org/wiki/YaCy)、[Kademlia](https://zh.wikipedia.org/wiki/Kademlia)。  

**无结构 P2P**
- 点对点之间互有连结资讯，彼此形成无规则[网状拓扑](https://zh.wikipedia.org/wiki/%E7%BD%91%E7%BB%9C%E6%8B%93%E6%89%91)结构。
- 需要请求某资源节点时，以[广播](https://zh.wikipedia.org/wiki/%E5%B9%BF%E6%92%AD)方式寻找，通常会设[TTL](https://zh.wikipedia.org/wiki/%E5%AD%98%E6%B4%BB%E6%99%82%E9%96%93)，即使存在也不一定找得到。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

**松散结构 P2P**
- 点对点之间互有连结资讯，彼此形成无规则网状拓扑结构。
- 需要请求某资源时，依现有资讯推测寻找，介于结构P2P和无结构P2P之间。
- 如[Freenet](https://zh.wikipedia.org/wiki/Freenet)。  

#### P2P 网络



P2P 网络不同于传统的 **客户端/服务端 (Client/Server, C/S) 结构**，P2P 网络中的每个节点都可以既是客户端也是服务端，因此也不适合使用 HTTP 协议进行节点之间的通信，一般都是直接使用 Socket 进行网络编程。

P2P 主要存在四种不同的网络模型，也代表着 P2P 技术的四个发展阶段：**集中式、纯分布式、混合式和结构化模型**。不过需要指出的是，这里所说的网络模型主要是指路由查询结构，即不同节点之间如何建立连接通道，两个节点之间一旦建立连接，具体传输什么数据则是两个节点之间的事情了



**集中式**

存在一个中心节点保存了其他所有节点的索引信息，索引信息一般包括节点 IP 地址、端口、节点资源等。集中式路由的优点就是结构简单、实现容易。但缺点也很明显，由于中心节点需要存储所有节点的路由信息，当节点规模扩展时，就很容易出现性能瓶颈；而且也存在单点故障问题。



**纯分布式**

移除了中心节点，在 P2P 节点之间建立随机网络，就是在一个新加入节点和 P2P 网络中的某个节点间随机建立连接通道，从而形成一个随机拓扑结构。新节点加入该网络的实现方法也有很多种，最简单的就是随机选择一个已经存在的节点并建立邻居关系。像比特币的话，则是使用 DNS 的方式来查询其他节点，DNS 一般是硬编码到代码里的，这些 DNS 服务器就会提供比特币节点的 IP 地址列表，从而新节点就可以找到其他节点建立连接通道。新节点与邻居节点建立连接后，还需要进行全网广播，让整个网络知道该节点的存在。全网广播的方式就是，该节点首先向邻居节点广播，邻居节点收到广播消息后，再继续向自己的邻居节点广播，以此类推，从而广播到整个网络。这种广播方法也称为泛洪机制。纯分布式结构不存在集中式结构的单点性能瓶颈问题和单点故障问题，具有较好的可扩展性，但泛洪机制引入了新的问题，主要是可控性差的问题，包括两个较大的问题，一是容易形成泛洪循环，比如节点 A 发出的消息经过节点 B 到 节点 C，节点 C 再广播到节点 A，这就形成了一个循环；另一个棘手问题则是响应消息风暴问题，如果节点 A 想请求的资源被很多节点所拥有，那么在很短时间内，会出现大量节点同时向节点 A 发送响应消息，这就可能会让节点 A 瞬间瘫痪。



**混合式**

混合式其实就是混合了集中式和分布式结构，如下图所示，网络中存在多个**超级节点**组成分布式网络，而每个超级节点则有多个**普通节点**与它组成局部的集中式网络。一个新的普通节点加入，则先选择一个超级节点进行通信，该超级节点再推送其他超级节点列表给新加入节点，加入节点再根据列表中的超级节点状态决定选择哪个具体的超级节点作为父节点。这种结构的泛洪广播就只是发生在超级节点之间，就可以避免大规模泛洪存在的问题。在实际应用中，混合式结构是相对灵活并且比较有效的组网架构，实现难度也相对较小，因此目前较多系统基于混合式结构进行开发实现。其实，比特币网络如今也是这种结构，后面再细说。



**结构化 P2P 网络**

它也是一种分布式网络结构，但与纯分布式结构不同。纯分布式网络就是一个随机网络，而结构化网络则将所有节点按照某种结构进行有序组织，比如形成一个环状网络或树状网络。而结构化网络的具体实现上，普遍都是基于 **DHT(Distributed Hash Table，分布式哈希表)** 算法思想。DHT 只是提出一种网络模型，并不涉及具体实现，主要想解决如何在分布式环境下快速而又准确地路由、定位数据的问题。具体的实现方案有 Chord、Pastry、CAN、Kademlia 等算法，其中 **Kademlia** 也是以太坊网络的实现算法，很多常用的 P2P 应用如 BitTorrent、电驴等也是使用 Kademlia。因为篇幅有限，就不展开讲这些算法的具体原理了。目前，我们主要理解 DHT 的核心思想即可。



在 P2P 网络中，可以抽象出两种空间：**资源空间**和节点空间。资源空间就是所有节点保存的资源集合，节点空间就是所有节点的集合。对所有资源和节点分别进行编号，如把资源名称或内容用 Hash 函数变成一个数值（这也是 DHT 常用的一种方法），这样，每个资源就有对应的一个 ID，每个节点也有一个 ID，资源 ID 和节点 ID 之间建立起一种映射关系，比如，将资源 n 的所有索引信息存放到节点 n 上，那要搜索资源 n 时，只要找到节点 n 即可，从而就可以避免泛洪广播，能更快速而又准确地路由和定位数据。当然，在实际应用中，资源 ID 和节点 ID 之间是无法做到一一对应的，但因为 ID 都是数字，就存在大小关系或偏序关系等，基于这些关系就能建立两者的映射关系。这就是 DHT 的核心思想。DHT 算法在资源编号和节点编号上就是使用了分布式哈希表，使得资源空间和节点空间的编号有唯一性、均匀分布式等较好的性质，能够适合结构化分布式网络的要求。





#### P2P 算法
**分散式杂凑表 (distributed hash table)**  
最初的四项分散式杂凑表技术 ——[Chord](https://en.wikipedia.org/wiki/Chord_(peer-to-peer))、[CAN](https://en.wikipedia.org/wiki/Content_addressable_network)、[Pastry(DHT)](https://en.wikipedia.org/wiki/Pastry_%28DHT%29)、及 [Tapestry(DHT)](https://en.wikipedia.org/wiki/Tapestry_%28DHT%29) 同时于2001 年发表。从那时开始，相关的研究便一直十分活跃。在学术领域以外，分散式咋丑表技术已经被应用在 [BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent) 及 [CoralCDN](https://zh.wikipedia.org/w/index.php?title=CoralCDN&action=edit&redlink=1)（[Coral Content Distribution Network](https://zh.wikipedia.org/w/index.php?title=Coral_Content_Distribution_Network&action=edit&redlink=1)）等。


#### 应用

点对点技术有许多应用。共享包含各种格式音频，视频，数据等的文件是非常普遍的，即時数据。


#### Question

Nat 属于那一层？([source](https://networkengineering.stackexchange.com/questions/3145/what-layer-of-the-osi-model-does-nat-work))

NAT works at layer 3 because it is modifying the IP header. If you use PAT you could argue that it is working at layer 4 as well because it MIGHT change the source port of the packet in case it is not unique.

> Several internal addresses can be NATed to only one or a few external addresses by using a feature called Port Address Translation (PAT) which is also referred to as "overload", a subset of NAT functionality. 
>
> PAT uses unique source port numbers on the Inside Global IP address to distinguish between translations. Because the port number is encoded in 16 bits, the total number could theoretically be as high as 65,536 per IP address. 
>
> PAT will attempt to preserve the original source port, if this source port is already allocated PAT will attempt to find the first available port number starting from the beginning of the appropriate port group 0-5111, 512-1023 or 1024-65535. 
>
> If there is still no port available from the appropriate group and more than one IP address is configured, PAT will move to the next IP address and try to allocate the original source port again. This continues until it runs out of available ports and IP addresses.



[1]: https://en.wikipedia.org/wiki/Category:Application_layer_protocols
[2]: https://en.wikipedia.org/wiki/Category:Transport_layer_protocols
[3]: https://en.wikipedia.org/wiki/Category:Internet_layer_protocols
[4]: https://en.wikipedia.org/wiki/Category:Link_protocols


<div id="bcp2p">
