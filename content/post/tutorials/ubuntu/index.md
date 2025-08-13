---
title: Ubuntu 系统配置
subtitle: 个人开发环境配置 Ubuntu22.04
summary: 本文介绍了在Ubuntu22.04上配置个人开发环境的步骤，包括浏览器、终端、软件和环境等方面的配置。
# Link this post with a project
projects: []
# Date published
date: '2023-12-13T00:00:00Z'
# Date updated
lastmod: '2023-12-13T00:00:00Z'
# Is this an unpublished draft?
draft: false
# Show this page in the Featured widget?
featured: true
weight: 2
# Featured image
image:
  caption: 'Ubuntu 系统配置界面'
  focal_point: ''
  placement: 2
  preview_only: false
authors:
  - admin
tags:
  - Academic
  - 开源
  - Ubuntu
categories:
    - 教程
---
## 一、 安装浏览器

- 安装Edge浏览器
- 安装网络工具
  工具在手，天下我有！
  [下载地址](https://github.com/clash-verge-rev/clash-verge-rev/releases/)
- VsCode安装和更新

  ```bash
  # 安装
  wget http://fishros.com/install -O fishros && . fishros

  #先更新源
  sudo apt-get update

  #再安装vscode
  sudo apt-get install code
  ```

## 二、配置终端

[zsh配置](https://blog.csdn.net/qq_43447339/article/details/135758451)

## 三、软件、环境等配置

### 1. ROS2配置

[ROS2一键安装教程](https://fishros.org.cn/forum/topic/20/%E5%B0%8F%E9%B1%BC%E7%9A%84%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E7%B3%BB%E5%88%97?lang=zh-CN)

### 2. 深度学习环境配置

#### (1) CUDA安装

- 软件更新--->附加驱动
- ubuntu 20.04 cuda12.0安装命令
  [CUDA下载地址](https://developer.nvidia.com/cuda-toolkit-archive)
  [参考博客](https://blog.csdn.net/weixin_37926734/article/details/123033286)

```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.0.0/local_installers/cuda-repo-ubuntu2004-12-0-local_12.0.0-525.60.13-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-12-0-local_12.0.0-525.60.13-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2004-12-0-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda
```

#### (2) Conda环境配置

- 关闭自动激活的base环境

```bash
conda config --set auto_activate_base false
```

#### (3) Git配置

```bash
git安装与卸载
apt-get install git apt-get remove git

git配置
配置用户名
git config --global user.name “zl”
配置邮箱
git config --global user.email “zlsy@mail.ustc.edu.cn”
查看配置信息
git config --global --list
生成公钥
ssh-keygen -t rsa -C "zlsy@mail.ustc.edu.cn"
```

#### (4) pip镜像源配置

- 临时使用pip镜像源

```bash
sudo pip install numpy -i https://pypi.tuna.tsinghua.edu.cn/simple/ 
```

- 永久配置

```bash
mkdir ~/.pip  #创建一个名为.pip的文件夹
cd ~/.pip    #进入创建的文件夹
touch pip.conf  #创建pip.conf
sudo gedit ~/.pip/pip.conf   #编辑文件
 
复制下面的内容到文件中（配置的豆瓣源，也可以配置别的）
[global]
index-url = https://pypi.mirrors.ustc.edu.cn/simple/
[install]
trusted-host=pypi.mirrors.ustc.edu.cn

镜像源推荐
（1）阿里云 https://mirrors.aliyun.com/pypi/simple/
（2）豆瓣https://pypi.douban.com/simple/
（3）清华大学 https://pypi.tuna.tsinghua.edu.cn/simple/
（4）中国科学技术大学 https://pypi.mirrors.ustc.edu.cn/simple/
（5）华中科技大学https://pypi.hustunique.com/
```

### 3.软件安装

#### CoppeliaSim

- [创建快捷方式](https://blog.csdn.net/qq_43447339/article/details/135889186)
- 终端打开（推荐）

```bash
alias vrep='/opt/CoppeliaSim/CoppeliaSim_Edu_V4_1_0_Ubuntu20_04/coppeliaSim.sh'
```

#### Mujoco

- [Ubuntu20.04安装Mujoco](https://blog.csdn.net/weixin_51844581/article/details/128454472)


## 四、相关问题

### 1. [ubuntu与windows双系统安装，缺少启动引导项](https://blog.csdn.net/qq_43447339/article/details/146441068?spm=1001.2014.3001.5501)

  ----------------------------完善中-------------------------------
