
# About Protocol  
网络协议入门笔记。<br/>

## TCP/IP 协议族  

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
又称点对点技术，是[无中心服务器](https://zh.wikipedia.org/wiki/%E5%8E%BB%E4%B8%AD%E5%BF%83%E5%8C%96)、依靠用户群（peers）交换信息的互联网体系，它的作用在于，减低以往网路传输中的节点，以降低资料遗失的风险。



#### 根据中央化程度分类  
##### 纯 P2P:
- 节点同时作为[客户端](https://zh.wikipedia.org/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF)和[服务器端](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AB%AF)。
- 没有中心[服务器](https://zh.wikipedia.org/wiki/%E6%9C%8D%E5%8A%A1%E5%99%A8)。
- 没有中心[路由器](https://zh.wikipedia.org/wiki/%E8%B7%AF%E7%94%B1%E5%99%A8)。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

##### 杂 P2P

- 有一个中心服务器保存[节点](https://zh.wikipedia.org/wiki/%E8%8A%82%E7%82%B9)的信息并对请求这些信息的要求做出响应。
- 节点负责发布这些信息（因为中心服务器并不保存文件），让中心服务器知道它们想共享什么文件，让需要它的节点下载其可共享的资源。
- 路由终端使用地址，通过被一组[索引](https://zh.wikipedia.org/wiki/%E7%B4%A2%E5%BC%95)引用来取得绝对地址。
- 如最原始的[Napster](https://zh.wikipedia.org/wiki/Napster)。  

##### 混合 P2P
- 同时含有纯P2P和杂P2P的特点。
- 如[Skype](https://zh.wikipedia.org/wiki/Skype)。



#### 根据网路拓扑结构  

##### 结构 P2P
- 点对点之间互有连结资讯，彼此形成特定规则拓扑结构。
- 需要请求某资源时，依该拓扑结构规则寻找，若存在则一定找得到。
- 如[Chord](https://zh.wikipedia.org/w/index.php?title=Chord&action=edit&redlink=1)、[YaCy](https://zh.wikipedia.org/wiki/YaCy)、[Kademlia](https://zh.wikipedia.org/wiki/Kademlia)。  

##### 无结构 P2P
- 点对点之间互有连结资讯，彼此形成无规则[网状拓扑](https://zh.wikipedia.org/wiki/%E7%BD%91%E7%BB%9C%E6%8B%93%E6%89%91)结构。
- 需要请求某资源节点时，以[广播](https://zh.wikipedia.org/wiki/%E5%B9%BF%E6%92%AD)方式寻找，通常会设[TTL](https://zh.wikipedia.org/wiki/%E5%AD%98%E6%B4%BB%E6%99%82%E9%96%93)，即使存在也不一定找得到。
- 如[Gnutella](https://zh.wikipedia.org/wiki/Gnutella)。  

##### 松散结构 P2P
- 点对点之间互有连结资讯，彼此形成无规则网状拓扑结构。
- 需要请求某资源时，依现有资讯推测寻找，介于结构P2P和无结构P2P之间。
- 如[Freenet](https://zh.wikipedia.org/wiki/Freenet)。  



#### 应用

点对点技术有许多应用。共享包含各种格式音频，视频，数据等的文件是非常普遍的，即時数据（如IP电话通信，Anychat音视频开发软件）也可以使用P2P技术来传送。


[1]: https://en.wikipedia.org/wiki/Category:Application_layer_protocols
[2]: https://en.wikipedia.org/wiki/Category:Transport_layer_protocols
[3]: https://en.wikipedia.org/wiki/Category:Internet_layer_protocols
[4]: https://en.wikipedia.org/wiki/Category:Link_protocols

