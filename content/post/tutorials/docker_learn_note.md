---
title: Docker 学习
subtitle: Docker 学习笔记
summary: 本文介绍了Docker的基础教程、镜像准备、调试等内容，适合初学者学习和使用Docker。
projects: []
date: '2023-12-13T00:00:00Z'
lastmod: {{ .Date }}
draft: false
featured: false
image:
    caption: 'Docker 学习笔记'
    focal_point: ''
    placement: 2
    preview_only: false
    filename: './images/docker.png'
categories:
    - 教程
    - Docker
tags:
    - Docker
authors:
  - admin
---
## docker 学习笔记

### 1. 基础教程

参考教程：

1. [菜鸟入门Docker](https://blog.csdn.net/qq_40298902/article/details/105967342)
2. [Docker 封装anaconda环境，生成镜像并打包1](https://blog.csdn.net/qq_32101863/article/details/120341856)
3. [Docker 封装anaconda环境，生成镜像并打包2](https://blog.csdn.net/qq_32101863/article/details/120344080)
4. [Docker 菜鸟教程](https://www.runoob.com/docker/docker-image-usage.html)

### 2. docker镜像准备

#### 下载基础镜像

```shell
docker pull ubuntu:18.04
```

#### 制作镜像

编写Dockerfile文件，内容示例如下：
    ```shell
    # 使用官方的 Python 3.8 镜像作为基础镜像
    FROM python:3.8

    # 安装 wget

    RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

    # 下载 Miniconda 安装脚本

    RUN wget -q[https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh) -O miniconda.sh

    # 安装 Miniconda

    RUN bash miniconda.sh -b -p /opt/miniconda &&
    rm miniconda.sh

    # 初始化 Conda

    RUN /opt/miniconda/bin/conda init bash

    # 创建新的 Conda 环境

    ENV CONDA_ENV=myenv
    RUN conda create -y --name $CONDA_ENV python=3.8

    # 激活 Conda 环境

    RUN echo "conda activate $CONDA_ENV" >> ~/.bashrc

    # 安装所需的包

    RUN conda install -y -n $CONDA_ENV numpy pandas matplotlib

    # 设置容器内的工作目录

    WORKDIR /usr/src/app

    # 设置容器启动时的命令

    CMD ["/bin/bash"]
    ```

#### 构建镜像

```shell
docker build --network host -t mirrors.tencent.com/star_library/tlinux-64bit-python3.6:0415 .
```

#### 推送镜像

```shell
# 以下方括号内容为需要根据实际需求替换的字符串
# 登录至软件源docker registry，[user]为OA账号名，[token]为软件源系统分配，可以通过【快捷指令】获取
sudo docker login --username [user] --password [token] mirrors.tencent.com
 
# push镜像至软件源docker registry，[image_id]即docker镜像的id，可以通过sudo docker image list命令查看
sudo docker tag [image_id] mirrors.tencent.com/[namespace]/[repo]:[tag]
sudo docker push mirrors.tencent.com/[namespace]/[repo]:[tag]

如
docker push mirrors.tencent.com/gethinhu/tlinux-64bit-python3.6:0415
```

### 3. 调试

为了保证调试时训练程序运行环境与线上实际的运行环境一致，需要在开发机上用与线上相同的docker镜像启动容器

为了方便，平台也准备了一个脚本run_docker.sh，可以从附件下载使用。使用方法：

注意：

如果报错‘run_docker.sh : command not found’，请检查/usr/local/bin是否包含在$PATH里，如果没有，将其加入$PATH。

如果报错‘docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]].’，是因为开发机没安装nvidia-docker，可以联系O2000(Oteam统一技术支持)解决。

```shell
# 1. 编写run_docker.sh
        # 示例

        #!/bin/bash
        image_full_name=$1
        if [ -z ${image_full_name} ]
        then
        echo "mirrors.tencent.com/lllzheng/cuda11.8-ubuntu20.04:0511    \n"
        exit 0
        fi

        cmd=$2
        if [ -z "${cmd}" ]
        then
        echo "cd /apdcephfs/private_lllzheng/taiji/peg-in-hole-6D/     \n"
        echo "conda activate mujoco     \n"
        echo "python3 /apdcephfs/private_lllzheng/taiji/peg-in-hole-6D/try_train.py     \n"
        exit 0
        fi

        echo ${image_full_name}
        echo ${cmd}
        docker run -it --gpus all --network=host --name test -v /apdcephfs/:/apdcephfs/private_lllzheng  ${image_full_name}  ${cmd}

        #如果docker -v版本小于19.03，请使用以下docker run命令
        #docker run -it -e NVIDIA_VISIBLE_DEVICES=all --network=host -v /apdcephfs/:/apdcephfs/  ${image_full_name}  ${cmd}

        # sudo bash run_docker.sh mirrors.tencent.com/lllzheng/cuda11.8-ubuntu20.04:0511 /bin/bash -c "cd /apdcephfs/private_lllzheng/taiji/peg-in-hole-6D/ && conda activate mujoco && python3 /apdcephfs/private_lllzheng/taiji/peg-in-hole-6D/try_train.py"

# 2. 运行run_docker.sh
chmod +x run_docker.sh
run_docker.sh ${image_full_name} ${cmd}
eg：run_docker.sh mirrors.tencent.com/star_library/g-tlinux2.2-python3.6-cuda9.0-cudnn7.6-tf1.12:latest /bin/bash -c "python3.6 /apdcephfs/private_gethinhu/mnist_trainer/fully_connected_feed.py --train_dir /apdcephfs/share_986015/mnist_dataset/ --max_steps 100000 --batch_size=1000"
```
