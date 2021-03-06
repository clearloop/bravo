# 术语

Gun从图论和网状网络中借用了一些术语，然后定义了它自己的一些术语。这里你可以找到他们的意思的总结。

#### Node
图中的对象。它可以包含原始值，但不包含其他对象（仅指向其他节点的指针）。也被称为顶点）在图论中。

#### Pseudo-merge/Union
两个对象之间的智能合并。不同的是Object.assign，它使用HAM冲突解决引擎来确保更新以可交换的方式进行合并。

#### Pseudo-node/Key Node
用于添加二级索引（通过.key()#key）方法的枪中特殊类型的节点）。它提供了一个虚拟合并到一个聚合节点的唯一ID列表。

#### Soul
对象通用唯一标识符的同义词。枪中的每个节点都有一个（#在对象元数据中命名为“ ”）。

#### Graph
包含唯一节点的对象。

#### Peer
网状网络上的单个设备。通常承担客户端和服务器的角色。

#### Mesh
一个协作网络，其中每个对等方负责转发他人的消息（并且如果它有数据则响应请求）。指网状网络的概念。

#### Partition
当一组对等方无法与另一方进行通信时，例如两台服务器彼此之间失去连接，但仍在为客户端服务。

#### Universe
应用程序中每个节点上的所有节点和图形的总和。
