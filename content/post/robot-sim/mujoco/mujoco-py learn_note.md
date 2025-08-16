---
title: Mujoco-py 学习
categories:
  - robot-sim
  - Mujoco
tags:   
  - Mujoco
author: 
  - admin
---
## mujoco-py 学习笔记

### 1. 安装

```bash
pip install mujoco-py
```

### 常见安装错误

* 如果报错 Cython.Compiler.Errors.CompileError:

```bash
pip uninstall cython
pip install cython==0.29.21
```

* tensorboard打不开

```bash
# 第一步：查看端口占用：
lsof -i:6006
# 第二步：关掉占用端口的进程
kill -9 PID
```

#### 参考

[mujoco-py安装遇问题](https://blog.csdn.net/weixin_44420419/article/details/116231500)
[mujoco-py渲染问题](https://blog.csdn.net/weixin_44420419/article/details/116519279)

### 小记

#### 使用

```python
import mujoco_py
model = mujoco_py.load_model_from_path("path/to/model.xml")
sim = mujoco_py.MjSim(model)
```

创建了一个 MjSim 对象，它表示一个 MuJoCo 仿真实例。通过这个对象，执行各种操作，例如执行仿真步骤、获取和设置模型状态、渲染仿真环境等。使用 sim 对象实现或获取的操作：

* 执行仿真步骤：使用 ``sim.step()``方法，执行一步仿真。这将根据当前的模型状态和控制输入更新模型的状态。
* 获取和设置模型状态：使用 ``sim.data``属性来获取和设置模型的状态。例如，获取关节角度、速度、力矩等信息，也可以设置关节力矩、外部力等。
* 渲染仿真环境：使用 ``sim.render()``方法，渲染仿真环境。这将在屏幕上显示仿真环境的当前状态。
* 获取和设置控制输入：使用 ``sim.data.ctrl``属性来获取和设置控制输入。例如，设置关节的目标位置、速度或力矩等。
* 获取和设置模型参数：使用 ``sim.model``属性来获取和设置模型参数。例如，获取关节的惯量、刚度等信息，也可以设置关节的摩擦系数、阻尼系数等。
* 保存和加载仿真状态：使用 ``sim.save()``和 ``sim.load()``方法来保存和加载仿真状态。这可以用于暂停和恢复仿真，或者在多个仿真实例之间共享状态。
* 获取和设置相机参数：使用 ``sim.render_context``属性来获取和设置相机参数。例如，设置相机的位置、方向、视野角等。

##### sim.data中一些主要的属性

* qpos：关节位置的数组，这个数组包含了模拟中所有关节的位置和所有自由物体的位置和方向。
* qvel：关节速度的数组。
* qacc：关节加速度的数组。
* qfrc_applied：施加到每个关节的外部力的数组。
* qfrc_actuator:
* ctrl：控制器的控制信号的数组。
* time：模拟的当前时间。
* xpos：模型中每个物体的位置的数组。
* xquat：模型中每个物体的四元数表示的方向的数组。
* xmat：模型中每个物体的旋转矩阵表示的方向的数组。
* xipos：模型中每个惯性元素的位置的数组。
* ximat：模型中每个惯性元素的旋转矩阵表示的方向的数组。
* contact：模型中的接触信息。

##### PyMjData

* `act`: 执行器激活数组，用于控制执行器的激活状态。

* `act_dot`: 执行器激活的变化率。

* `active_contacts_efc_pos`: 活动接触点的全局位置。

* `actuator_force`: 执行器产生的力。

* `actuator_length`: 执行器的长度。

* `actuator_moment`: 执行器产生的力矩。

* `actuator_velocity`: 执行器的速度。

* `body_jacp, body_jacr`: 与身体相关的雅可比矩阵的偏导数。

* `body_xmat, body_xpos, body_xquat, body_xvelp, body_xvelr`: 描述身体的位置、方向、速度和旋转的矩阵和向量。

* `cacc`: 接触点的累积加速度。

* `cam_xmat, cam_xpos`: 相机的位置和方向。

* `cdof, cdof_dot`: 自由度的当前值和变化率。

* `cfrc_ext`: 外部力。

* `cfrc_int`: 内部力。

* `cinert`: 惯性张量。

* `contact`: 接触信息。

* `crb`: 约束雅可比矩阵。

* `ctrl`: 控制输入。

* `cvel`: 接触点的速度。

* `efc_AR, efc_D, efc_J, efc_R`: 接触力雅可比矩阵、阻尼矩阵、约束雅可比矩阵和旋转矩阵。

* `energy`: 系统能量。

* `geom_jacp, geom_jacr, geom_xmat, geom_xpos, geom_xvelp, geom_xvelr`: 几何体的位置、方向、速度。

* `light_xdir, light_xpos`: 光源的方向和位置。

* `maxuse_con, maxuse_efc, maxuse_stack`: 各种数组的最大使用数量。

* `mocap_pos, mocap_quat`: 运动捕捉的位置和四元数。

* `nbuffer, ncon, ne, nefc, nf, nstack`: 不同类型数据的数量。

* `pstack`: 预测栈。

* `qLD, qLDiagInv, qLDiagSqrtInvInv, qM, qacc, qacc_unc, qacc_warmstart`: 与线性代数相关的矩阵和向量。

* `qfrc_actuator, qfrc_applied, qfrc_bias, qfrc_constraint, qfrc_inverse, qfrc_passive, qfrc_unc`: 与力相关的向量。

* `qpos, qvel`: 关节位置和速度状态。

* `sensordata`: 传感器数据。

* `set_joint_qpos, set_joint_qvel`: 设置关节位置和速度的方法。

* `set_mocap_pos, set_mocap_quat`: 设置运动捕捉位置和四元数的方法。

* `site_jacp, site_jacr, site_xmat, site_xpos, site_xvelp, site_xvelr`: 站点的雅可比、位置、方向、速度。

* `solver, solver_fwdinv, solver_iter, solver_nnz`: 与求解器相关的属性。

* `subtree_angmom, subtree_com, subtree_linvel`: 子树的角动量、质心和线性速度。

* `ten_length, ten_moment, ten_velocity, ten_wrapadr, ten_wrapnum`: 肌腱的长度、力矩、速度和缠绕信息。

* `time, timer`: 仿真时间。

* `userdata`: 用户自定义数据。

* `warning`: 警告信息。

* `wrap_obj, wrap_xpos`: 与肌腱缠绕相关的对象和位置。

* `xanchor, xaxis`: 与接触有关的锚点和轴。

* `ximat, xpos`: 位置和方向。

* `xfrc_applied`: 应用的外部力。
