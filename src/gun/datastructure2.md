# 数据结构表2
> 结构表分类介绍

**基础的 JSON 对象**

GUN 通过一个特殊的JSON的子集对进行数据的存储和交互。这听起来会很诡异，但它确实非常简单明了。

举个例子:
```
{
  age: 23,
  hacker: true,
  name: "Mark Nadal"
}
```

**元数据**

对象由域值对组成，值将不会是 `null`, `true`, `false`, 而会是 `number`, `decimal`, `string` 或 `relation`。准确的来讲，GUN 将会使用 [[vacabulary|Glossary]] 这样的简洁的组合用来整个域的更新。

为了使 GUN 处理不同分布式 peer 数据的更新合并， 它将会保持记录域和值的元数据。元数据包括 GUN 对象本身， GUN 中的对象被称为节点。

```
{
  _: {},
  age: 23,
  hacker: true,
  name: "Mark Nadal"
}
```

元数据将存储在域 `_` 中。

**Soul**  
每个节点都愉悦拥有一个全宇宙唯一的 ID, 叫做 SOUL, 被存储在元数据的 `#` 中。就像这样:
```json
{
  _: {"#": "ASDF"},
  age: 23,
  hacker: true,
  name: "Mark Nadal"
}
```

为了理解，我们的例子是使用一个很短的 soul。soul 不应该是这么短，应该生成一个 UUID 或 GUID 或一些足够长的随机字母数字字符串。他们也不应该与任何其他使用GUN的应用程序中的任何其他节点发生冲突 - 稍后再介绍。但首先：

```json
{
  _: {
    '#':'ASDF',
    '>': {}
  },
  age: 23,
  hacker: true,
  name: "Mark Nadal"
}
```

**假想失忆症机器（HAM）状态**  

```json
{
  _: {
    '#':'ASDF',
    '>': {
      age: 2,
      hacker: 2,
      name: 2
    }
  },
  age: 23,
  hacker: true,
  name: "Mark Nadal"
}
```

就像你做的，那是一个完整的 GUN 节点。由于 GUN 可以在部分节点上进行同步，因此可以非常干净利落地执行增量更新。您只需发送节点的差异，而不是整个节点本身。现在让我们回头看看原始对象并尝试执行以下操作：

```json
{
  age: 23,
  friend: {
    hacker: true,
    name: "Shreyas Raman"
  },
  hacker: true,
  name: "Mark Nadal"
}
```

**图表**  
GUN 将会同步自身为一个称为 "Graph"的 JSON 子集，称为图。为了清楚起见，我们将隐藏我们视图中的 HAM 元数据。

```
{
  'ASDF': {
    _: {'#':'ASDF'},
    age: 23,
    friend: {'#':'FDSA'}
    hacker: true,
    name: "Mark Nadal"
  },
  'FDSA': {
    _: {'#':'FDSA'},
    hacker: true,
    name: "Shreyas Raman"
  }
}
```

你可以看到我们将对象变成了一个图表，它具有字段和节点对。图上的字段对应于它所具有的节点的 soul。但我们如何保持 Mark 的 fridend？我们提到一个原始值也可以被称为 "relation"。"relation" 有一个非常简单的结构，它是一个只有 soul 领域的对象。

```{'#': 'FDSA'}```

该字段的价值是它指向的节点的灵魂。由于灵魂是普遍独一无二的，他们可以指向你的应用内或其外的数据。JSON的这个子集允许我们序列化一个数据网络，包括循环引用！现在，最后，图表之外还有一件事：

```
{
  ...
}
```

图表中的每一个，都被称为 universe 。但是，由于单台机器不能同时处理那么多的数据，我们必须将数据分布到多台机器上，每台机器都关注特定时间间隔内的某个有限图形。这些图包含保存我们感兴趣的实际字段和值的节点，以及保证元数据的合并。

**结语**  
同志们，从最小的原子一直到数据宇宙。以简单的`值`，`领域`，`节点`，`图表`排列简洁地表达。我希望你在 GUN 格式化的 JSON 子集中享受这种论述。如果您有任何问题，请在离开时问问 mark@gunDB.io！
