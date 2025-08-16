---
title: Mujoco 学习笔记
categories:
  - robot-sim
  - Mujoco
tags:   
  - Mujoco
author: 
  - admin
---


## 一、Mujoco安装

```python
pip install mujoco
```

## 二、交互式查看器

### 命令行打开

- 启动一个空的可视化会话，其中可以通过拖放加载模型

```python
python -m mujoco.viewer
```

- 指定加载模型

```python
python -m mujoco.viewer --mjcf=/path/to/some/mjcf.xml
```

### Python程序中打开

- ```viewer.launch()```
启动一个空的可视化会话，其中可以通过拖放加载模型。

- ```viewer.launch(model)```
可视化工具启动给定的可视化会话 在内部创建自己的实例

- ```viewer.launch(model, data)```
与上述相同，只是可视化工具直接在给定实例上运行，退出时对象将被修改。

### 被动查看器

- ```viewer.launch_passive(model, data)```
创建一个被动查看器实例。在此模式下，函数不会阻塞，允许代码继续执行。用户的脚本负责计时和推进物理状态，除非用户显式同步传入事件，否则鼠标拖动将不起作用

## 基本用法

```python
import mujoco
```

## 参考[^1]

[^1]: [Mujoco Python](https://mujoco.readthedocs.io/en/stable/python.html#)
