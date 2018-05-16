# 第六章 交易

## 简介

比特币交易是比特币系统中最重要的部分。根据比特币系统的设计原理，系统中任何其他的部分都是为了确保比特币交易可以被生成、能在比特币网络中得以传播和通过验证，并最终添加入全球比特币交易总账簿（比特币区块链）。

**解码后的交易**
```
{
  "version": 1,
  "locktime": 0,
  "vin": [
    {
      "txid":"7957a35fe64f80d234d76d83a2a8f1a0d8149a41d81de548f0a65a8a999f6f18",
      "vout": 0,
      "scriptSig": "3045022100884d142d86652a3f47ba4746ec719bbfbd040a570b1deccbb6498c75c4ae24cb02204b9f039ff08df09cbe9f6addac960298cad530a863ea8f53982c09db8f6e3813[ALL] 0484ecc0d46f1918b30928fa0e4ed99f16a0fb4fde0735e7ade8416ab9fe423cc5412336376789d172787ec3457eee41c04f4938de5cc17b4a10fa336a8d752adf",
      "sequence": 4294967295
    }
 ],
  "vout": [
    {
      "value": 0.01500000,
      "scriptPubKey": "OP_DUP OP_HASH160 ab68025513c3dbd2f7b92a94e0581f5d50f654e7 OP_EQUALVERIFY OP_CHECKSIG"
    },
    {
      "value": 0.08450000,
      "scriptPubKey": "OP_DUP OP_HASH160 7f9b1a7fb68d60c536c2fd8aeaa53a8f3cc025a8 OP_EQUALVERIFY OP_CHECKSIG",
    }
  ]
}
```
在比特币里，没有具体的货币，没有发送者，没有接收者，没有余额，没有账户，没有地址。

## 交易的输入和输出

用户的比特币“余额”是指用户钱包中可用的UTXO总和，而他们可能分散在数百个交易和区块中。一个UTXO可以是1“聪”（satoshi）的任意倍数（整数倍）。比特币可以被分割成八位小数的"聪"。UTXO是面值为“聪”的离散（不连续）且不可分割的价值单元，一个 UTXO 只能在一次交易中作为一个整体被消耗。  
一笔交易会消耗先前的已被记录（存在）的UTXO，并创建新的UTXO以备未来的交易消耗。通过这种方式，一定数量的比特币价值在不同所有者之间转移，并在交易链中消耗和创建UTXO。一笔比特币交易通过使用所有者的签名来解锁UTXO，并通过使用新的所有者的比特币地址来锁定并创建UTXO。

## 交易输出

每一笔交易都会创造输出，几乎所有的输出都能创造一定数量的可用于支付的比特币，也就是 UTXO。UTXO 在 UTXO 集中被每一个全节点比特币客户端追踪。新的交易从 UTXO 集中消耗一个或多个输出。  

交易输出包含两部分:
+ 一定量的比特币，面值为 "聪"，是最小的比特币单位。
+ 确定话费输出所需条件的加密难题。

```
"vout": [
  {
    "value": 0.01500000,
    "scriptPubKey": "OP_DUP OP_HASH160 ab68025513c3dbd2f7b92a94e0581f5d50f654e7 OP_EQUALVERIFY
OP_CHECKSIG"
  },
  {
    "value": 0.08450000,
    "scriptPubKey": "OP_DUP OP_HASH160 7f9b1a7fb68d60c536c2fd8aeaa53a8f3cc025a8 OP_EQUALVERIFY OP_CHECKSIG",
  }
]
```
> 如您所见，交易包含两个输出。 每个输出都由一个值和一个加密难题来定义。 在 Bitcoin Core 显示的编码中，该值显示以 bitcoin 为单位，但在交易本身中，它被记录为以 satoshis 为单位的整数。 每个输出的第二部分是设定支出条件的加密难题。 

## 交易序列化 - 输出

当交易通过网络传输或在应用程序之间交换时，它们被序列化。 序列化是将内部的数据结构表示转换为可以一次发送一个字节的格式（也称为字节流）的过程。

| Size                    | Field               | Description                                                  |
|-------------------------|---------------------|--------------------------------------------------------------|
| 8 bytes (little-endian) | Amount              | Bitcoin value in satoshis (10^-8 bitcoin)                    |
| 1-9 bytes (VarInt)      | Locking-Script Size | Locking-Script length in bytes, to follow                    |
| Variable                | Lockingn-Script     | A script defininng the conditions needed to spend the output |

> 大多数比特币函数库和架构不会在内部将交易存储为字节流，因为每次需要访问单个字段时，都需要复杂的解析。为了方便和可读性，比特币函数库将交易内部存储在数据结构（通常是面向对象的结构）中。

## 交易序列化 - 交易输入

当交易被序列化以在网络上传输时，它们的输入被编码成字节流。

| Size      | Field                 | Description                                                       |
|-----------|-----------------------|-------------------------------------------------------------------|
| 32 bytes  | Transaction Hash      | Pointer to the transaction containing the UTXO to be spent        |
| 4 bytes   | Output index          | The index nnumber of the UTXO to be spent; first one is 0         |
| 1-9 bytes | Unlocking-Script Size | Unlocking-Script length in bytes, to follow                       |
| Variable  | Unlocking-Script      | A script that fullfills the conditions of the UTXO locking script |
| 4 bytes   | Sequence Number       | Used for locktime or disabled (0xFFFFFFFF)                        |

## 交易费

交易费是基于交易的千字节规模来计算的，而不是比特币交易的价值。  
总的来说，交易费是根据比特币网络中的市场力量确定的。矿工会依据许多不同的标准对交易进行优先级排序，包括费用，他们甚至可能在某些特定情况下免费处理交易。  
但大多数情况下，交易费影响处理优先级，这意味着有足够费用的交易会更可能被打包进下一个挖出的区块中；反之交易费不足或者没有交易费的交易可能会被推迟，基于尽力而为的原则在几个区块之后被处理，甚至可能根本不被处理。交易费不是强制的，而且没有交易费的交易最终也可能会被处理，但是，交易费将提高处理优先级。  

随着时间的推移，交易费的计算方式以及在交易处理优先级上的影响已经产生了变化。起初，交易费是固定的，是网络中的一个固定常数。渐渐地，随着网络容量和交易量的不断变化，并可能受到来自市场力量的影响，收费结构开始放松。自从至少2016年初以来，比特币网络容量的限制已经造成交易之间的竞争，从而导致更高的费用，免费交易彻底成为过去式。零费用或非常低费用的交易鲜少被处理，有时甚至不会在网络上传播。  

## 把交易加到交易中






