# 图的结构

有很种互竞争的数据结构，如如 document, tree, tabular, relational.... 甚至是正在发展中的更多。
图表可以创建任何其他数据结构，它是 Gun 能够实现的核心。

## 结构层次

### 简述
+ 在图形中，对象从不包含其他对象，只是引用
+ Gun 称这些引用为 'Soul'
+ `Soul`被转化为 Hash Symbol 后，所在的对象被称为 `relations`
+ 图可以形成任何数据结构
+ Gun 非常酷

### 结构
Gun 只实现两层结构，如果想要在对象中添加对象，必须先命名对象然后再引用它。

```javascript
var structure = {
    foo: {
        text: "hello" 
    }, 
    bar: {
        text: world
    },
    world: {
        text: "world"
    }
};
```

### 冲突解决
```json
var structure = {
    "ckxAzmBrErR1": {
        text: "hello"
    },
    "qx8QuUBturo8": {
        text: "u12wN9znw50y"
    },
    "u12wN9znw50y": {
        text: "world"
    }
}
```

这些生成的唯一值被称为 `Soul`, `Soul` 驱动着整个系统。
把 `Soul` 包装在对象中的原因是为了与字符串区分。
这些对象被称为 `relate`，包含了 `"#": "a0CLhos5ADx3"` 这样的 hash sign。


## 基本的 JSON 对象

### 元数据

Gun 中的对象由 field 或 value pairs 其中之一或 `null`, `true` 或 `false`, 一个 number 或 decimal, string, 或 relation。Gun 使用统一的词汇表([[vocabulary|Glossary]])，其中的值是基元, 当它保存时整个 field 都将更新。

为了GUN确定性地跨越许多分散的 peers 进行更新，它必须保存关于字段及其值的元数据。该元数据包含在GUN对象本身中，GUN中的对象称为节点。

```json
{
    _: {},
    foo: "bar"
}
```

元数据存储在保留字段`_`中。

### Soul

每个节点都有 `soul` 形式的唯一 ID。

```
{
   _: {"#": "imid"},
}
```

### 假想失忆症机器(HAM)状态
虚拟失忆症机器的元数据，作为该>领域保留。这包含节点上所有字段及其相应收敛状态的副本。
```
{
    _:{
        "#": "imid",
        ">": {
            foo: "bar"
        },
        foo: "xbar"
    }
}
```

这是一个完整的 Gun 节点，由于GUN可以在部分节点上进行同步，因此可以非常干净利落地执行增量更新。您只需发送节点的差异，而不是整个节点本身。

### 图

Gun 将会把这个 Gun 节点化为一个被称为图的 JSON 子集。

```
{
    "ASDF": {
        _: {"#": "ASDF"},
        >: {...},
        foo: "bar",
        world: {"#": "FDSA"}
    },
    "FDSA": {
        _: {"#": "FDSA"},
        >: {...},
        subfoo: "subbar"
    }
}
```

Gun 中所有的图标，称为宇宙。历史上所有图形的图表，称为宇宙。但是，由于单台机器不能同时处理那么多的数据，因此我们必须将数据分布到多台机器上，每台机器都关注特定时间间隔内的某个有限图形。这些图包含保存我们感兴趣的实际字段和值的节点，以及保证收敛的元数据。

