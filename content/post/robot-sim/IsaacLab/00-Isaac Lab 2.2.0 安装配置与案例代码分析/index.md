---
title: 00-Isaac Lab 2.2.0 --- 安装配置与案例代码分析
subtitle: 
summary: 
projects: []
# Date published
date: '2025-08-16T00:00:00Z'
draft: false
featured: false
weight: 1
image:
  caption: ''
  focal_point: ''
  placement: 2
  preview_only: false
authors:
  - lllzheng
tags:
  - Isaac Lab
categories:
    - IsaacLab
---

# 00-Isaac Lab 2.2.0 --- 安装配置与案例代码分析

## 1. 前言

- NVIDIA 已 **弃用 Isaac Gym**，不再维护。  
- 官方全面转向 **Isaac Lab**，并提供长期支持与丰富示例。

本文将手把手进行：

> 从 0 到 1 完成 **Isaac Lab 2.2.0** 环境搭建、验证、训练与仿真。

---

## 2. Isaac Lab 强化学习平台环境搭建

### 2.1 系统要求

- **操作系统**：Windows 10/11、Ubuntu 20.04/22.04  
- **GPU**：RTX 30/40 系列或同级别 Quadro / A100  
- **驱动**：≥ 535（Linux）、≥ 536（Windows）  

> 官方提供「兼容性检查工具」：

| 平台 | 命令 |
|---|---|
| Windows | `omni.isaac.sim.compatibility_check.bat` |
| Linux | `./omni.isaac.sim.compatibility_check.sh` |

绿色 = 完全满足；橙色 = 可用但建议升级；红色 = 不通过。

---

### 2.2 什么是 Isaac Sim？

| 维度 | 说明 |
|---|---|
| **引擎** | PhysX 5 + GPU 加速 |
| **格式** | 原生支持 USD |
| **传感器** | RGB-D、LiDAR、IMU、接触传感器 |
| **AI** | 兼容 PyTorch / TensorFlow |
| **接口** | Python API、ROS 1/2 Bridge |
| **场景** | 工业机械臂、AGV、四足、人形机器人 |

---

### 2.3 安装 Isaac Sim & Isaac Lab

#### 方案 A：

[官方教程](https://isaac-sim.github.io/IsaacLab/main/source/setup/installation/isaaclab_pip_installation.html)

#### 方案 B：

一键安装脚本：[下载链接](install_isaaclab.sh)
```bash
wget -O install_isaaclab.sh https://docs.robotsfan.com/install_isaaclab.sh && bash install_isaaclab.sh
```

> **常见故障**：多显卡 ICD 冲突  
> 禁用多余核显（设备管理器 → Intel GPU → 禁用设备）即可。

---

## 4. Isaac Lab 训练脚本解析

> 文件：`scripts/reinforcement_learning/rsl_rl/train.py`

| 关键模块 | 作用 |
|---|---|
| **CLI 参数** | `--task`, `--num_envs`, `--max_iterations`, `--video`, `--distributed` |
| **AppLauncher** | 启动 Isaac Sim |
| **Hydra 配置** | `@hydra_task_config` 自动加载 YAML |
| **环境包装** | `RslRlVecEnvWrapper` 兼容 RSL-RL |
| **训练器** | `OnPolicyRunner`（与宇树旧代码一致） |
| **日志** | `logs/rsl_rl/{timestamp}_{run_name}` |

---
