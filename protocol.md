---
author: mercury
email: udtrokia@163.com
github: https://github.com/udtrokia
---



# About Blockchain Protocol  



### ·OUTLINE·

### <a src="#tcp">TCP/IP 协议族</a>

### <a src="#stack">协议栈( Protocol Stack )</a>

### <a src="#p2p">对等网络( peer-to-peer)</a>

### <a src="#bcp2p">区块链 P2P</a>

### <a src="#distributed">分布式网络</a>

### <a src="#consensus">数字货币的分布式机制比较</a>







## TCP/IP 协议族  
<div id="tcp"/>


#### 不同计算机运行的不同协议  

| 计算机 | 协议                                                         |
| ------ | ------------------------------------------------------------ |
| 路由器 | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[SNMP](https://zh.wikipedia.org/wiki/SNMP)，[RIP](https://zh.wikipedia.org/wiki/%E8%B7%AF%E7%94%B1%E4%BF%A1%E6%81%AF%E5%8D%94%E8%AD%B0)。 |
| 客户端 | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[TCP](https://zh.wikipedia.org/wiki/%E4%BC%A0%E8%BE%93%E6%8E%A7%E5%88%B6%E5%8D%8F%E8%AE%AE)，[DNS](https://zh.wikipedia.org/wiki/DNS)，[HTTP](https://zh.wikipedia.org/wiki/HTTP)，[FTP](https://zh.wikipedia.org/wiki/FTP)。 |
| 电脑   | [TELNET](https://zh.wikipedia.org/wiki/TELNET)，[SMTP](https://zh.wikipedia.org/wiki/SMTP)，[POP3](https://zh.wikipedia.org/wiki/POP3)，[DHCP](https://zh.wikipedia.org/wiki/DHCP)，[SSH](https://zh.wikipedia.org/wiki/SSH) |
| 固件   | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[BOOTP](https://zh.wikipedia.org/w/index.php?title=BOOT&action=edit&redlink=1)，[TFTP](https://zh.wikipedia.org/wiki/TFTP) |


#### 因特网协议栈中的层  
将 TCP / IP 参考模型映射到 OSI 模型。<br/>

| OSI 模型   | TCP / IP 系列协议                                            |
| ---------- | ------------------------------------------------------------ |
| 应用层     | [HTTP](https://zh.wikipedia.org/wiki/HTTP)、[SMTP](https://zh.wikipedia.org/wiki/SMTP)、[FTP](https://zh.wikipedia.org/wiki/FTP)、[Telnet](https://zh.wikipedia.org/wiki/Telnet)、[SSH](https://zh.wikipedia.org/wiki/SSH)、[NFS](https://zh.wikipedia.org/wiki/NFS)、 |
| 表示层     | [XDR](https://zh.wikipedia.org/w/index.php?title=External_Data_Representation&action=edit&redlink=1)、[ASN.1](https://zh.wikipedia.org/w/index.php?title=Abstract_Syntax_Notation_1&action=edit&redlink=1)、[SMB](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%B6%88%E6%81%AF%E5%9D%97)、[AFP](https://zh.wikipedia.org/wiki/Apple_Filing_Protocol)、[NCP](https://zh.wikipedia.org/w/index.php?title=NetWare_Core_Protocol&action=edit&redlink=1) |
| 会话层     | [ASAP](https://zh.wikipedia.org/w/index.php?title=Aggregate_Server_Access_Protocol&action=edit&redlink=1)、[RPC](https://zh.wikipedia.org/w/index.php?title=Remote_procedure_call&action=edit&redlink=1)、[NetBIOS](https://zh.wikipedia.org/wiki/NetBIOS)、[ASP](https://zh.wikipedia.org/wiki/AppleTalk)、[Winsock](https://zh.wikipedia.org/wiki/Winsock)、[BSD sockets](https://zh.wikipedia.org/wiki/Berkeley_sockets) |
| 传输层     | [TCP](https://zh.wikipedia.org/wiki/%E4%BC%A0%E8%BE%93%E6%8E%A7%E5%88%B6%E5%8D%8F%E8%AE%AE)、[UDP](https://zh.wikipedia.org/wiki/User_Datagram_Protocol)、[TLS](https://zh.wikipedia.org/wiki/Transport_Layer_Security)、[SCTP](https://zh.wikipedia.org/wiki/%E6%B5%81%E6%8E%A7%E5%88%B6%E4%BC%A0%E8%BE%93%E5%8D%8F%E8%AE%AE)、[SPX](https://zh.wikipedia.org/wiki/Sequenced_packet_exchange)、[ATP](https://zh.wikipedia.org/wiki/AppleTalk)、[IL](https://zh.wikipedia.org/w/index.php?title=IL_Protocol&action=edit&redlink=1) |
| 网络层     | [IP](https://zh.wikipedia.org/wiki/%E7%BD%91%E9%99%85%E5%8D%8F%E8%AE%AE)、[ARP](https://zh.wikipedia.org/wiki/ARP)、[X.25](https://zh.wikipedia.org/wiki/X.25)、[L2TP](https://zh.wikipedia.org/wiki/%E7%AC%AC%E4%BA%8C%E5%B1%82%E9%9A%A7%E9%81%93%E5%8D%8F%E8%AE%AE)、[PPPoE](https://zh.wikipedia.org/wiki/PPPoE)、 [STP](https://zh.wikipedia.org/wiki/%E7%94%9F%E6%88%90%E6%A0%91%E5%8D%8F%E8%AE%AE) |
| 数据链路层 | [以太网](https://zh.wikipedia.org/wiki/%E4%BB%A5%E5%A4%AA%E7%BD%91)、[IEEE 802.11](https://zh.wikipedia.org/wiki/IEEE_802.11)、[FDDI](https://zh.wikipedia.org/wiki/FDDI)、[PPPoE](https://zh.wikipedia.org/wiki/PPPoE)、[L2TP](https://zh.wikipedia.org/wiki/%E7%AC%AC%E4%BA%8C%E5%B1%82%E9%9A%A7%E9%81%93%E5%8D%8F%E8%AE%AE)、 |
| 物理层     | [线路](https://zh.wikipedia.org/w/index.php?title=%E7%BA%BF%E8%B7%AF&action=edit&redlink=1)、[无线电](https://zh.wikipedia.org/wiki/%E6%97%A0%E7%BA%BF%E7%94%B5)、[光纤](https://zh.wikipedia.org/wiki/%E5%85%89%E7%BA%A4) |

通常人们认为 OSI 模型的最上面三层在 TCP/IP 是一个层。  

| OSI 模型        | TCP / IP 系列协议                                            |
| --------------- | ------------------------------------------------------------ |
| [应用层][2]     | [HTTP](https://zh.wikipedia.org/wiki/HTTP)、[FTP](https://zh.wikipedia.org/wiki/FTP)、[DNS](https://zh.wikipedia.org/wiki/DNS) |
| [传输层][2]     | [TCP](https://zh.wikipedia.org/wiki/%E4%BC%A0%E8%BE%93%E6%8E%A7%E5%88%B6%E5%8D%8F%E8%AE%AE)、[UDP](https://zh.wikipedia.org/wiki/UDP)、[RTP](https://zh.wikipedia.org/wiki/RTP)、[SCTP](https://zh.wikipedia.org/wiki/SCTP) |
| [网络互连层][3] | 对于TCP/IP来说这是[因特网协议](https://zh.wikipedia.org/wiki/%E5%9B%A0%E7%89%B9%E7%BD%91%E5%8D%8F%E8%AE%AE)（IP） |
| [网络接口层][4] | 例如[以太网](https://zh.wikipedia.org/wiki/%E4%BB%A5%E5%A4%AA%E7%BD%91)、[Wi-Fi](https://zh.wikipedia.org/wiki/Wi-Fi)、[MPLS](https://zh.wikipedia.org/wiki/MPLS)等。 |





## 协议栈 ( Protocol stack )
<div id="stack"/>


#### 定义

**协议栈**（英语：Protocol stack），又称**协议堆叠**，是计算机[网络协议](https://zh.wikipedia.org/wiki/%E7%BD%91%E7%BB%9C%E5%8D%8F%E8%AE%AE)套件的一个具体的软件实现。  



#### 描述

如下图所示，[A], [B], [C] 分别为三台电脑:  

+ [A] - [B]: 无线网连接，使用网络协议如 `IEEE 802.11`
+ [B] - [C]: 电缆连接，如 `以太网`
+ [A] - [C]: 基于上述两种协议建立新的协议，如 `IP`  

```
 T~~~~T
[A]  [B]__[C]
```

这样就形成了两个协议栈，两个不同类型的基础协议不会直接通信。  





## 对等网络 ( peer-to-peer )
<div id="p2p"/>
又称点对点技术，是[无中心服务器](https://zh.wikipedia.org/wiki/%E5%8E%BB%E4%B8%AD%E5%BF%83%E5%8C%96)、依靠用户群（peers）交换信息的互联网体系，它的作用在于，减低以往网路传输中的节点，以降低资料遗失的风险。



### 根据中央化程度分类  
#### 纯 P2P:

- 节点同时作为[客户端](https://zh.wikipedia.org/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF)和[服务器端](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AB%AF)。
- 没有中心[服务器](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8)。
- 没有中心[路由器](https://zh.wikipedia.org/wiki/%E8%B7%AF%E7%94%B1%E5%99%A8)。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

#### 杂 P2P

- 有一个中心服务器保存[节点](https://zh.wikipedia.org/wiki/%E8%8A%82%E7%82%B9)的信息并对请求这些信息的要求做出响应。
- 节点负责发布这些信息（因为中心服务器并不保存文件），让中心服务器知道它们想共享什么文件，让需要它的节点下载其可共享的资源。
- 路由终端使用地址，通过被一组[索引](https://zh.wikipedia.org/wiki/%E7%B4%A2%E5%BC%95)引用来取得绝对地址。
- 如最原始的[Napster](https://zh.wikipedia.org/wiki/Napster)。  

#### 混合 P2P
- 同时含有纯P2P和杂P2P的特点。
- 如[Skype](https://zh.wikipedia.org/wiki/Skype)。



### 根据网路拓扑结构  

#### 结构 P2P
- 点对点之间互有连结资讯，彼此形成特定规则拓扑结构。
- 需要请求某资源时，依该拓扑结构规则寻找，若存在则一定找得到。
- 如[Chord](https://zh.wikipedia.org/w/index.php?title=Chord&action=edit&redlink=1)、[YaCy](https://zh.wikipedia.org/wiki/YaCy)、[Kademlia](https://zh.wikipedia.org/wiki/Kademlia)。  

#### 无结构 P2P
- 点对点之间互有连结资讯，彼此形成无规则[网状拓扑](https://zh.wikipedia.org/wiki/%E7%BD%91%E7%BB%9C%E6%8B%93%E6%89%91)结构。
- 需要请求某资源节点时，以[广播](https://zh.wikipedia.org/wiki/%E5%B9%BF%E6%92%AD)方式寻找，通常会设[TTL](https://zh.wikipedia.org/wiki/%E5%AD%98%E6%B4%BB%E6%99%82%E9%96%93)，即使存在也不一定找得到。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

#### 松散结构 P2P
- 点对点之间互有连结资讯，彼此形成无规则网状拓扑结构。
- 需要请求某资源时，依现有资讯推测寻找，介于结构P2P和无结构P2P之间。
- 如[Freenet](https://zh.wikipedia.org/wiki/Freenet)。  



### 应用

点对点技术有许多应用。共享包含各种格式音频，视频，数据等的文件是非常普遍的，即時数据。



### Question

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



## 区块链 P2P 
<div id="bcp2p">

网络部分摘自 [<详解区块链网络>](https://keeganlee.me/post/blockchain/20180313)，



### P2P 网络



P2P 网络不同于传统的 **客户端/服务端 (Client/Server, C/S) 结构**，P2P 网络中的每个节点都可以既是客户端也是服务端，因此也不适合使用 HTTP 协议进行节点之间的通信，一般都是直接使用 Socket 进行网络编程。

P2P 主要存在四种不同的网络模型，也代表着 P2P 技术的四个发展阶段：**集中式、纯分布式、混合式和结构化模型**。不过需要指出的是，这里所说的网络模型主要是指路由查询结构，即不同节点之间如何建立连接通道，两个节点之间一旦建立连接，具体传输什么数据则是两个节点之间的事情了



#### 集中式

存在一个中心节点保存了其他所有节点的索引信息，索引信息一般包括节点 IP 地址、端口、节点资源等。集中式路由的优点就是结构简单、实现容易。但缺点也很明显，由于中心节点需要存储所有节点的路由信息，当节点规模扩展时，就很容易出现性能瓶颈；而且也存在单点故障问题。



#### 纯分布式

移除了中心节点，在 P2P 节点之间建立随机网络，就是在一个新加入节点和 P2P 网络中的某个节点间随机建立连接通道，从而形成一个随机拓扑结构。新节点加入该网络的实现方法也有很多种，最简单的就是随机选择一个已经存在的节点并建立邻居关系。像比特币的话，则是使用 DNS 的方式来查询其他节点，DNS 一般是硬编码到代码里的，这些 DNS 服务器就会提供比特币节点的 IP 地址列表，从而新节点就可以找到其他节点建立连接通道。新节点与邻居节点建立连接后，还需要进行全网广播，让整个网络知道该节点的存在。全网广播的方式就是，该节点首先向邻居节点广播，邻居节点收到广播消息后，再继续向自己的邻居节点广播，以此类推，从而广播到整个网络。这种广播方法也称为泛洪机制。纯分布式结构不存在集中式结构的单点性能瓶颈问题和单点故障问题，具有较好的可扩展性，但泛洪机制引入了新的问题，主要是可控性差的问题，包括两个较大的问题，一是容易形成泛洪循环，比如节点 A 发出的消息经过节点 B 到 节点 C，节点 C 再广播到节点 A，这就形成了一个循环；另一个棘手问题则是响应消息风暴问题，如果节点 A 想请求的资源被很多节点所拥有，那么在很短时间内，会出现大量节点同时向节点 A 发送响应消息，这就可能会让节点 A 瞬间瘫痪。



#### 混合式

混合式其实就是混合了集中式和分布式结构，如下图所示，网络中存在多个**超级节点**组成分布式网络，而每个超级节点则有多个**普通节点**与它组成局部的集中式网络。一个新的普通节点加入，则先选择一个超级节点进行通信，该超级节点再推送其他超级节点列表给新加入节点，加入节点再根据列表中的超级节点状态决定选择哪个具体的超级节点作为父节点。这种结构的泛洪广播就只是发生在超级节点之间，就可以避免大规模泛洪存在的问题。在实际应用中，混合式结构是相对灵活并且比较有效的组网架构，实现难度也相对较小，因此目前较多系统基于混合式结构进行开发实现。其实，比特币网络如今也是这种结构，后面再细说。



**结构化 P2P 网络**

它也是一种分布式网络结构，但与纯分布式结构不同。纯分布式网络就是一个随机网络，而结构化网络则将所有节点按照某种结构进行有序组织，比如形成一个环状网络或树状网络。而结构化网络的具体实现上，普遍都是基于 **DHT(Distributed Hash Table，分布式哈希表)** 算法思想。DHT 只是提出一种网络模型，并不涉及具体实现，主要想解决如何在分布式环境下快速而又准确地路由、定位数据的问题。具体的实现方案有 Chord、Pastry、CAN、Kademlia 等算法，其中 **Kademlia** 也是以太坊网络的实现算法，很多常用的 P2P 应用如 BitTorrent、电驴等也是使用 Kademlia。因为篇幅有限，就不展开讲这些算法的具体原理了。目前，我们主要理解 DHT 的核心思想即可。



在 P2P 网络中，可以抽象出两种空间：**资源空间**和节点空间。资源空间就是所有节点保存的资源集合，节点空间就是所有节点的集合。对所有资源和节点分别进行编号，如把资源名称或内容用 Hash 函数变成一个数值（这也是 DHT 常用的一种方法），这样，每个资源就有对应的一个 ID，每个节点也有一个 ID，资源 ID 和节点 ID 之间建立起一种映射关系，比如，将资源 n 的所有索引信息存放到节点 n 上，那要搜索资源 n 时，只要找到节点 n 即可，从而就可以避免泛洪广播，能更快速而又准确地路由和定位数据。当然，在实际应用中，资源 ID 和节点 ID 之间是无法做到一一对应的，但因为 ID 都是数字，就存在大小关系或偏序关系等，基于这些关系就能建立两者的映射关系。这就是 DHT 的核心思想。DHT 算法在资源编号和节点编号上就是使用了分布式哈希表，使得资源空间和节点空间的编号有唯一性、均匀分布式等较好的性质，能够适合结构化分布式网络的要求。





### P2P 算法



#### 分散式杂凑表 (distributed hash table)

最初的四项分散式杂凑表技术 ——[Chord](https://en.wikipedia.org/wiki/Chord_(peer-to-peer))、[CAN](https://en.wikipedia.org/wiki/Content_addressable_network)、[Pastry(DHT)](https://en.wikipedia.org/wiki/Pastry_%28DHT%29)、及 [Tapestry(DHT)](https://en.wikipedia.org/wiki/Tapestry_%28DHT%29) 同时于2001 年发表。从那时开始，相关的研究便一直十分活跃。在学术领域以外，分散式咋丑表技术已经被应用在 [BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent) 及 [CoralCDN](https://zh.wikipedia.org/w/index.php?title=CoralCDN&action=edit&redlink=1)（[Coral Content Distribution Network](https://zh.wikipedia.org/w/index.php?title=Coral_Content_Distribution_Network&action=edit&redlink=1)）等。







## 分布式网络
<div id="distributed">

IPFS 内容摘自 [wiki](https://zh.wikipedia.org/wiki/星际文件系统), 部分内容来自 [IPFS 指南](https://zhuanlan.zhihu.com/p/33535984)，[IPFSER](http://ipfser.org/2017/12/07/a1/)



#### IPFS 

在2014年，IPFS协议利用[比特币](https://zh.wikipedia.org/wiki/%E6%AF%94%E7%89%B9%E5%B8%81)[区块链](https://zh.wikipedia.org/wiki/%E5%8C%BA%E5%9D%97%E9%93%BE)[协议](https://zh.wikipedia.org/w/index.php?title=%E6%AF%94%E7%89%B9%E5%B8%81%E5%8D%8F%E8%AE%AE&action=edit&redlink=1)和网络基础设施的优势来存储不可更改的数据，移除网络上的重复文件，以及获取存储节点的地址信息——用以搜索网络中的文件。[[5\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-ct20160924-5)目前的实现采用[Go](https://zh.wikipedia.org/wiki/Go)[[6\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-6)和[JavaScript](https://zh.wikipedia.org/wiki/JavaScript)[[7\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-7)，并有[Python](https://zh.wikipedia.org/wiki/Python)的实现正在发展。[[8\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-8)Go实现被认为是开发正式[规范](https://zh.wikipedia.org/w/index.php?title=Specification_(technical_standard)&action=edit&redlink=1)时的“参考实现”[[9\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-9)[[10\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-10)。

IPFS是一个对等的分布式文件系统，它尝试为所有计算设备连接同一个文件系统。在某些方面，IPFS类似于[万维网](https://zh.wikipedia.org/wiki/%E4%B8%87%E7%BB%B4%E7%BD%91)，但它也可以被视作一个独立的[BitTorrent](https://zh.wikipedia.org/wiki/BitTorrent_(%E5%8D%8F%E8%AE%AE))群、在同一个[Git](https://zh.wikipedia.org/wiki/Git)仓库中交换对象。换种说法，IPFS提供了一个高吞吐量、按内容寻址的[块存储](https://zh.wikipedia.org/wiki/%E5%9D%97_(%E6%95%B0%E6%8D%AE%E5%AD%98%E5%82%A8))模型，及与内容相关[超連結](https://zh.wikipedia.org/wiki/%E8%B6%85%E9%80%A3%E7%B5%90)。[[11\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-ibtimes20161013-11)这形成了一个广义的[Merkle](https://zh.wikipedia.org/w/index.php?title=Merkle&action=edit&redlink=1)[有向无环图](https://zh.wikipedia.org/wiki/%E6%9C%89%E5%90%91%E6%97%A0%E7%8E%AF%E5%9B%BE)（DAG）。IPFS结合了[分散式雜湊表](https://zh.wikipedia.org/wiki/%E5%88%86%E6%95%A3%E5%BC%8F%E9%9B%9C%E6%B9%8A%E8%A1%A8)、鼓励块交换和一个自我认证的命名空间。IPFS没有单点故障，并且节点不需要相互信任。[[12\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-12)分布式内容传递可以节约带宽，和防止HTTP方案可能遇到的DDoS攻击。

该文件系统可以通过多种方式访问，包括[FUSE](https://zh.wikipedia.org/wiki/FUSE)与[HTTP](https://zh.wikipedia.org/wiki/%E8%B6%85%E6%96%87%E6%9C%AC%E4%BC%A0%E8%BE%93%E5%8D%8F%E8%AE%AE)。将本地文件添加到IPFS文件系统可使其面向全世界可用。文件表示基于其哈希，因此有利于缓存。文件的分发采用一个基于BitTorrent的协议。其他查看内容的用户也有助于将内容提供给网络上的其他人。IPFS有一个称为IPNS的名称服务，它是一个基于[PKI](https://zh.wikipedia.org/wiki/%E5%85%AC%E9%96%8B%E9%87%91%E9%91%B0%E5%9F%BA%E7%A4%8E%E5%BB%BA%E8%A8%AD)的全局命名空间，用于构筑信任链，这与其他NS兼容，并可以映射[DNS](https://zh.wikipedia.org/wiki/%E5%9F%9F%E5%90%8D%E7%B3%BB%E7%BB%9F)、.onion、.bit等到IPNS。[[13\]](https://zh.wikipedia.org/wiki/%E6%98%9F%E9%99%85%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F#cite_note-13)



#### IPLD

IPLD 是分布式互联网的数据模型，它将内容寻址的数据结构转化为大型信息存储空间的子集，统一数据模型并用 IPLD 哈希值来连接索引数据。[**CID**](https://github.com/ipld/cid) 是在分布式信息系统中用来索引数据的格式，就像 [IPFS](https://ipfs.io/). 它对 [内容寻址](https://en.wikipedia.org/wiki/Content-addressable_storage), [散列加密](https://simple.wikipedia.org/wiki/Cryptographic_hash_function), 和 [自描述格式](https://github.com/multiformats/multiformats) 有很大帮助。 它是 [IPFS](https://ipfs.io/) 和 [IPLD](https://ipld.io/) 的基本标识符。它使用散列函数加密来实现内容寻址，它使用一些 [multiformats](https://github.com/multiformats/multiformats) 来实现响应式的自我描述, [multihash](https://github.com/multiformats/multihash) 是哈希值, [multicodec](https://github.com/multiformats/multicodec) 是数据类型, and [multibase](https://github.com/multiformats/multibase) 把 CID 本身编码成字符串。

通过哈希进行内容寻址的技术已经广泛应用于各种分布式系统。从加密货币的区块链到备份代码的每一次提交，再到各种web内容，他们背后的逻辑几乎是相同的， 然后由于数据结构的不兼容，造成了这些数据无法互相操作。IPLD作为中间层统一了这些异构的数据结构，使得不同的数据可以进行数据交换。



#### LIBP2P

在过去的相当长时间里，开发者构建一个p2p网络并不是一件容易的事情。复杂的网络环境、各种各样的通信协议和网络设备的存在使得创建大规模的点对点网络变得复杂并且困难。IPFS团队将点对点(peer-to-peer)网络的网络层从IPFS工程里面分离出来，形成一个独立的项目，这就是libp2p。该项目不仅可以供IPFS使用，也可以提供其它项目使用，作为一个p2p工程的底层协议存在。



#### FILECOIN

Filecoin是一个建立在区块链上的，拥有本地记号的去中心化存储网络架构。客户通过消费这些记号存储和读取数据，矿工通过存储和提供数据赚取标记。Filecoin DSN分别通过两个可验证市场进行读取请求：存储市场和检索市场。客户和矿工协商服务定价，而后将将订单上传到市场。这些市场由Filecoin网络来运作，Filecoin网络通过时空证明和复制证明来确保矿工可以执行承诺，正确地存储数据。最后，矿工们可以参与到新区块的建造中。矿工在新区块中的影响力与他们在网络中提供的存储量正相关。



#### MULTIFORMATS

通常情况下我们使用的哈希计算方法都是某一种实现方式，比如sha1，sha2-256等。哈希计算在我们的软件工程里面几乎随处可见，特别是区块链项目。multiformats将所有的哈希值计算统一成同样的格式，这会为系统开发者带来很多好处，比如加密函数升级等。



#### Merkle 数据格式

哈希树中，哈希值的求取通常使用诸如[SHA-2](https://zh.wikipedia.org/wiki/SHA-2)的加密哈希函数，但如果只是用于防止非故意的数据破坏，也可以使用不安全的[校验和](https://zh.wikipedia.org/wiki/%E6%A0%A1%E9%AA%8C%E5%92%8C)取得，比如[CRC](https://zh.wikipedia.org/wiki/%E5%BE%AA%E7%92%B0%E5%86%97%E9%A4%98%E6%A0%A1%E9%A9%97)。哈希树的顶部为顶部哈希（top hash），亦称根哈希（root hash）或主哈希（master hash）。以从 P2P 网络下载文件为例：通常先从可信的来源获取顶部哈希，如朋友告知、网站分享等。得到顶部哈希后，则整棵哈希树就可以通过 P2P 网络中的非受信来源获取。下载得到哈希树后，即可根据可信的顶部哈希对其进行校验，验证数据是否完整、是否遭受破坏。

每个[Merkle](https://zh.wikipedia.org/w/index.php?title=Merkle&action=edit&redlink=1)都是一个[有向无环图(DAG)](https://zh.wikipedia.org/wiki/%E6%9C%89%E5%90%91%E6%97%A0%E7%8E%AF%E5%9B%BE) ，因为每个节点都通过其名称访问。每个Merkle分支都是其本地内容的哈希，它们的子节点使用它们的哈希而非完整内容来命名。因此，在创建后将不能编辑节点。这可以防止循环（假设没有[哈希碰撞](https://zh.wikipedia.org/wiki/%E7%A2%B0%E6%92%9E_(%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%A7%91%E5%AD%A6))），因为无法将第一个创建的节点链接到最后一个节点从而创建最后一个引用。对任何Merkle来说，要创建一个新的分支或验证现有分支，通常需要在本地内容的某些组合体（例如列表的子哈希和其他字节）上使用一种哈希算法。IPFS中有多种散列算法可用。输入到散列算法中的数据的描述见 <https://github.com/ipfs/go-ipfs/tree/master/merkledag>。





## 数字货币的共识机制比较
<div id="consensus"/>

摘自 [<区块链数字货币的9种共识机制比较>](https://zhuanlan.zhihu.com/p/32585236) 



#### 1. 工作量证明 (POW)

#### 2. 权益证明 (POS)

#### 3. 股份授权证明（DPOS）

#### 4. 投注共识

#### 5. 瑞波共识机制（Ripple Consensus）

#### 6. Pool 验证池

#### 7. 实用拜占庭容错

#### 8. 股份授权证明（DPOS）

#### 9. Paxos 算法

