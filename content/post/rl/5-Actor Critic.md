---
title: Actor Critic
categories:
    - RL算法
tags:
    - RL
author: 高山临溪谷
comments: true
---
# Actor Critic

![1720667162152](../../img/blogs/rl/AC/AC2.png)

* 结合了```Policy Gradient (Actor)```和```Function Approximation (Critic)```的方法。```Actor```基于概率选行为,```Critic```基于```Actor```的行为评判行为的得分,```Actor```根据```Critic```的评分修改选行为的概率。

## Actor Critic优势


* 可以进行单步更新, 比传统的 Policy Gradient 要快。

## Actor Critic劣势


* 取决于 Critic 的价值判断, 但是 Critic 难收敛, 再加上 Actor 的更新, 就更难收敛.

## Actor Critic整体算法

![1720667162152](../../img/blogs/rl/AC/AC4.png)
![1720667162152](../../img/blogs/rl/AC/AC5.png)

*  Actor 在运用 Policy Gradient 的方法进行 Gradient ascent 的时候, 由 Critic 来告诉他, 这次的 Gradient ascent 是不是一次正确的 ascent, 如果这次的得分不好, 那么就不要 ascent 那么多。
