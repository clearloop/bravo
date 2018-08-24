# 性能

### 测试

该测试运行在市场上最便宜的Windows笔记本电脑上。售价150美元的2GB Atom CPU，搭载IETester进行性能基准测试。这些数字代表了其他数据库无法实现的性能突破。

+ Android手机，约5M操作/秒。
+ Macbook Air，Chrome，约30M操作/秒。
+ Macbook Pro，Chrome Canary，〜80M ops / sec。
+ 联想上网本，IE6，〜100K ops /秒。

与Redis相比，每秒处理速度为0.5M（缓存读取，Macbook Air），即使启用了管道优化。https://redis.io/topics/benchmarks。

### 实现

+ 使用PTSD（性能测试速度开发，如TDD）微代码优化代码。高性能C ++ uWebSockets库的作者在[这里](https://youtu.be/BEqH-oZ4UXI)称赞它。
+ 作为第一个if语句，减少函数调用并优先考虑热代码路径。
+ 只做一次工作，然后使用集中式缓存和缓存更新来跳过再次进行工作。

### 结论

+ 这些性能基准测试很少有缓存遗漏，相比其他数据库基准测试（如Redis），要好得多。<br>(Measuring disk I/O is not very interesting.)
+ 所有性能测试的基准都是有保留的，不确定的。<br>(That is why we're working on panic , a distributed testing runner.)
