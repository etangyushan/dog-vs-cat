#!/bin/bash

# 获取项目源码
echo "0.获取项目源码"
#git clone https://github.com/etangyushan/dog-vs-cat.git

# 安装 anaconda
echo "1.安装 anaconda"
wget http://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
chmod u+x Anaconda3-4.3.0-Linux-x86_64.sh
./Anaconda3-4.3.0-Linux-x86_64.sh
source ~/.bashrc
echo "source ~/.bashrc"
