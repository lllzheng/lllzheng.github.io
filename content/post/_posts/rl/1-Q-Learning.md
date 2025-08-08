---
title: Q-Learning
categories:
    - RL算法
tags:
    - RL
author: 高山临溪谷
comments: true
---
# Q-Learning

## QLearning 决策

![1720667078392](../../img/blogs/rl/Q-Learning/q2.png)

* 学习完成后，根据当前状态在Q值表中的***最大***Q值来选取动作

## QLearning更新

![1720667162152](../../img/blogs/rl/Q-Learning/q3.png)

* **更新Q值表**：通过计算现实Q值和估计Q值的差距来更新
* **现实Q值**：通过***想象***在下个状态选择的Q值（***max***）乘上衰减系数，并加上到达下个状态的奖励作为现实Q值（off-policy）
* **估计Q值**：原Q值表中对应的Q值

## QLearning整体算法

![1720667162152](../../img/blogs/rl/Q-Learning/q4.png)

* **迷人之处**：在```Q(s1, a2)```现实中, 也包含了一个```Q(s2)```的最大估计值，将对下一步的衰减的最大估计和当前所得到的奖励当成这一步的现实Q值。
* **Epsilon greedy**：是用在决策上的一种策略, 比如 epsilon = 0.9 时, 就说明有90% 的情况我会按照 Q 表的最优值选择行为, 10% 的时间使用随机选行为。
* **alpha**：学习率, 来决定这次的误差有多少是要被学习的, alpha是一个小于1 的数。
* **gamma**：对未来 reward 的衰减值。

## 代码

```python
"""
This part of code is the Q learning brain, which is a brain of the agent.
All decisions are made in here.

View more on my tutorial page: https://morvanzhou.github.io/tutorials/
"""

import numpy as np
import pandas as pd

np.random.seed(2)  # reproducible

class QLearningTable:
    def __init__(self, actions, learning_rate=0.01, reward_decay=0.9, e_greedy=0.9):
        self.actions = actions  # a list
        self.lr = learning_rate
        self.gamma = reward_decay
        self.epsilon = e_greedy
        self.q_table = pd.DataFrame(columns=self.actions, dtype=np.float64)

    def choose_action(self, observation):
        self.check_state_exist(observation)
        # action selection
        if np.random.uniform() < self.epsilon:
            # choose best action
            state_action = self.q_table.loc[observation, :]
            # some actions may have the same value, randomly choose on in these actions
            action = np.random.choice(state_action[state_action == np.max(state_action)].index)
        else:
            # choose random action
            action = np.random.choice(self.actions)
        return action

    def learn(self, s, a, r, s_):
        self.check_state_exist(s_)
        q_predict = self.q_table.loc[s, a]
        if s_ != 'terminal':
            q_target = r + self.gamma * self.q_table.loc[s_, :].max()  # next state is not terminal
        else:
            q_target = r  # next state is terminal
        self.q_table.loc[s, a] += self.lr * (q_target - q_predict)  # update

    def check_state_exist(self, state):
        if state not in self.q_table.index:
            # append new state to q table
            self.q_table = self.q_table.append(
                pd.Series(
                    [0]*len(self.actions),
                    index=self.q_table.columns,
                    name=state,
                )
            )
```
