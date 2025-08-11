---
title: DQN
categories:
    - RL算法
tags:
    - RL
author: 高山临溪谷
comments: true
---
# DQN

## 神经网络的作用

![1720667078392](../../img/blogs/rl/DQN/DQN2.png)

* 方式1：将状态和动作当成神经网络的输入, 然后经过神经网络分析后得到动作的 Q 值。
* 方式2：只输入状态值, 输出所有的动作值, 然后按照 Q-learning 的原则, 直接选择拥有最大值的动作当做下一步要做的动作。

## 神经网络更新

![1720667162152](../../img/blogs/rl/DQN/DQN3.png)
![1720667162152](../../img/blogs/rl/DQN/DQN4.png)

* **Q估计**：通过```NN```预测出```Q(s2, a1)``` 和```Q(s2,a2)```的值，然后选取```Q估计```中最大值的动作来换取环境中的奖励```reward```。 
* **Q现实**：通过神经网络分析下一步在```s'```的两个```Q估计```值
* **更新**：神经网络的的参数就是```老的NN参数 + 学习率alpha × (Q现实 - Q估计)```。

## DQN 两大利器

![1720667162152](../img/blogs/rl/DQN/DQN5.png)
![1720667162152](../img/blogs/rl/DQN/DQN6.png)

* **Experience Replay**：```DQN```有一个记忆库用于学习之前的经历，每次```DQN```更新的时候, 可以随机抽取一些之前的经历进行学习。 随机抽取这种做法打乱了经历之间的相关性, 也使得神经网络更新更有效率。(off-policy)
* **Fixed Q-targets**：在```DQN```中使用到两个结构相同但参数不同的神经网络, 预测```Q 估计```的神经网络具备最新的参数, 而预测```Q 现实```的神经网络使用的参数则是很久以前的。


## 算法伪代码

![1720667162152](../../img/blogs/rl/DQN/DQN6.jpg)

对比Q-learning：
* 记忆库 (用于重复学习)
* 神经网络计算```Q 值```
* 暂时冻结```q_target参数``` (切断相关性)

```python
"""
This part of code is the Q learning brain, which is a brain of the agent.
All decisions are made in here.

View more on my tutorial page: https://morvanzhou.github.io/tutorials/

Pytorch: https://github.com/ClownW/Reinforcement-learning-with-PyTorch
Tensorflow: https://github.com/MorvanZhou/Reinforcement-learning-with-tensorflow
"""

import numpy as np
import tensorflow as tf

np.random.seed(1)
tf.set_random_seed(1)


# Deep Q Network off-policy
class DeepQNetwork:
    def __init__(
            self,
            n_actions,
            n_features,
            learning_rate=0.01,
            reward_decay=0.9,
            e_greedy=0.9,
            replace_target_iter=300,
            memory_size=500,
            batch_size=32,
            e_greedy_increment=None,
            output_graph=False,
    ):
        self.n_actions = n_actions
        self.n_features = n_features
        self.lr = learning_rate
        self.gamma = reward_decay
        self.epsilon_max = e_greedy
        self.replace_target_iter = replace_target_iter
        self.memory_size = memory_size
        self.batch_size = batch_size
        self.epsilon_increment = e_greedy_increment
        self.epsilon = 0 if e_greedy_increment is not None else self.epsilon_max

        # total learning step
        self.learn_step_counter = 0

        # initialize zero memory [s, a, r, s_]
        self.memory = np.zeros((self.memory_size, n_features * 2 + 2))

        # consist of [target_net, evaluate_net]
        self._build_net()

        t_params = tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES, scope='target_net')
        e_params = tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES, scope='eval_net')

        with tf.variable_scope('hard_replacement'):
            self.target_replace_op = [tf.assign(t, e) for t, e in zip(t_params, e_params)]

        self.sess = tf.Session()

        if output_graph:
            # $ tensorboard --logdir=logs
            tf.summary.FileWriter("logs/", self.sess.graph)

        self.sess.run(tf.global_variables_initializer())
        self.cost_his = []

    def _build_net(self):
        # ------------------ all inputs ------------------------
        self.s = tf.placeholder(tf.float32, [None, self.n_features], name='s')  # input State
        self.s_ = tf.placeholder(tf.float32, [None, self.n_features], name='s_')  # input Next State
        self.r = tf.placeholder(tf.float32, [None, ], name='r')  # input Reward
        self.a = tf.placeholder(tf.int32, [None, ], name='a')  # input Action

        w_initializer, b_initializer = tf.random_normal_initializer(0., 0.3), tf.constant_initializer(0.1)

        # ------------------ build evaluate_net ------------------
        with tf.variable_scope('eval_net'):
            e1 = tf.layers.dense(self.s, 20, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer, name='e1')
            self.q_eval = tf.layers.dense(e1, self.n_actions, kernel_initializer=w_initializer,
                                          bias_initializer=b_initializer, name='q')

        # ------------------ build target_net ------------------
        with tf.variable_scope('target_net'):
            t1 = tf.layers.dense(self.s_, 20, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer, name='t1')
            self.q_next = tf.layers.dense(t1, self.n_actions, kernel_initializer=w_initializer,
                                          bias_initializer=b_initializer, name='t2')

        with tf.variable_scope('q_target'):
            q_target = self.r + self.gamma * tf.reduce_max(self.q_next, axis=1, name='Qmax_s_')    # shape=(None, )
            self.q_target = tf.stop_gradient(q_target)
        with tf.variable_scope('q_eval'):
            a_indices = tf.stack([tf.range(tf.shape(self.a)[0], dtype=tf.int32), self.a], axis=1)
            self.q_eval_wrt_a = tf.gather_nd(params=self.q_eval, indices=a_indices)    # shape=(None, )
        with tf.variable_scope('loss'):
            self.loss = tf.reduce_mean(tf.squared_difference(self.q_target, self.q_eval_wrt_a, name='TD_error'))
        with tf.variable_scope('train'):
            self._train_op = tf.train.RMSPropOptimizer(self.lr).minimize(self.loss)

    def store_transition(self, s, a, r, s_):
        if not hasattr(self, 'memory_counter'):
            self.memory_counter = 0
        transition = np.hstack((s, [a, r], s_))
        # replace the old memory with new memory
        index = self.memory_counter % self.memory_size
        self.memory[index, :] = transition
        self.memory_counter += 1

    def choose_action(self, observation):
        # to have batch dimension when feed into tf placeholder
        observation = observation[np.newaxis, :]

        if np.random.uniform() < self.epsilon:
            # forward feed the observation and get q value for every actions
            actions_value = self.sess.run(self.q_eval, feed_dict={self.s: observation})
            action = np.argmax(actions_value)
        else:
            action = np.random.randint(0, self.n_actions)
        return action

    def learn(self):
        # check to replace target parameters
        if self.learn_step_counter % self.replace_target_iter == 0:
            self.sess.run(self.target_replace_op)
            print('\ntarget_params_replaced\n')

        # sample batch memory from all memory
        if self.memory_counter > self.memory_size:
            sample_index = np.random.choice(self.memory_size, size=self.batch_size)
        else:
            sample_index = np.random.choice(self.memory_counter, size=self.batch_size)
        batch_memory = self.memory[sample_index, :]

        _, cost = self.sess.run(
            [self._train_op, self.loss],
            feed_dict={
                self.s: batch_memory[:, :self.n_features],
                self.a: batch_memory[:, self.n_features],
                self.r: batch_memory[:, self.n_features + 1],
                self.s_: batch_memory[:, -self.n_features:],
            })

        self.cost_his.append(cost)

        # increasing epsilon
        self.epsilon = self.epsilon + self.epsilon_increment if self.epsilon < self.epsilon_max else self.epsilon_max
        self.learn_step_counter += 1

    def plot_cost(self):
        import matplotlib.pyplot as plt
        plt.plot(np.arange(len(self.cost_his)), self.cost_his)
        plt.ylabel('Cost')
        plt.xlabel('training steps')
        plt.show()

if __name__ == '__main__':
    DQN = DeepQNetwork(3,4, output_graph=True)
```


# Double DQN

## 问题

* 在实际问题中, 如果你输出你的```DQN```的```Q 值```, 可能就会发现, ```Q 值```都超级大。这是由于DQN 基于```Q-learning```, 其中```Qmax```会导致```Q现实```当中的过估计 (overestimate)。 而```Double DQN```就是用来解决过估计的。 

## Double DQN 算法

* 两个神经网络: Q_eval (Q估计中的), Q_next (Q现实中的)。
* 原本的```Q_next = max(Q_next(s', a_all))```。
* Double DQN 中的```Q_next = Q_next(s', argmax(Q_eval(s', a_all)))```。 也可以表达成下面的式子：

![1720667162152](../../img/blogs/rl/DQN/DQN7.png)