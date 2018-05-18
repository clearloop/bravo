### 分布式网络

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



