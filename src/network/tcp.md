---
author: mercury
email: udtrokia@163.com
github: https://github.com/udtrokia
---

### TCP/IP 协议族  


##### 不同计算机运行的不同协议  

| 计算机 | 协议                                                         |
| ------ | ------------------------------------------------------------ |
| 路由器 | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[SNMP](https://zh.wikipedia.org/wiki/SNMP)，[RIP](https://zh.wikipedia.org/wiki/%E8%B7%AF%E7%94%B1%E4%BF%A1%E6%81%AF%E5%8D%94%E8%AD%B0)。 |
| 客户端 | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[TCP](https://zh.wikipedia.org/wiki/%E4%BC%A0%E8%BE%93%E6%8E%A7%E5%88%B6%E5%8D%8F%E8%AE%AE)，[DNS](https://zh.wikipedia.org/wiki/DNS)，[HTTP](https://zh.wikipedia.org/wiki/HTTP)，[FTP](https://zh.wikipedia.org/wiki/FTP)。 |
| 电脑   | [TELNET](https://zh.wikipedia.org/wiki/TELNET)，[SMTP](https://zh.wikipedia.org/wiki/SMTP)，[POP3](https://zh.wikipedia.org/wiki/POP3)，[DHCP](https://zh.wikipedia.org/wiki/DHCP)，[SSH](https://zh.wikipedia.org/wiki/SSH) |
| 固件   | [ARP](https://zh.wikipedia.org/wiki/ARP)，[IP](https://zh.wikipedia.org/wiki/IP)，[ICMP](https://zh.wikipedia.org/wiki/ICMP)，[UDP](https://zh.wikipedia.org/wiki/%E7%94%A8%E6%88%B7%E6%95%B0%E6%8D%AE%E6%8A%A5%E5%8D%8F%E8%AE%AE)，[BOOTP](https://zh.wikipedia.org/w/index.php?title=BOOT&action=edit&redlink=1)，[TFTP](https://zh.wikipedia.org/wiki/TFTP) |


##### 因特网协议栈中的层  
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
