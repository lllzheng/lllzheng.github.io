---
title: Windows/Ubuntu22.04 解决CoppeliaSim界面字体过小问题
subtitle: CoppeliaSim 字体调整
summary: 本文介绍了如何在Windows和Ubuntu22.04系统中解决CoppeliaSim界面字体过小的问题。
categories:
    - CoppeliaSim
tags:   
    - Coppeliasim
author: 
  - admin
---
## Ubuntu22.04 解决VREP/CoppeliaSim 界面字体过小问题

### Windows10

1.右键单击CoppeliaSim.exe（可能的位置：C：\ Program Files \ CoppeliaRobotics \ CoppeliaSimEdu），然后单击“属性”。

2.在“兼容性”选项卡下

3.单击“更改高DPI设置”

4.选中“替代高DPI缩放行为”框

5.缩放比例--选择“系统”

### Ubuntu

1.找到CoppeliaSim安装位置（例如：/opt/CoppeliaSimo_Edu_V4_2_0_Ubuntu20_04）
2.打开system 文件夹下usrset.txt文件，将变量“ highhandedness”的值更改为2
3.重启CoppeliaSim
![image](../../img/blogs/coppeliasim.png)
