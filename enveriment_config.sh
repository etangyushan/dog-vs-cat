#!/bin/bash

# 安装 anaconda
echo "1.安装 anaconda"
wget http://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
chmod u+x Anaconda3-4.3.0-Linux-x86_64.sh
./Anaconda3-4.3.0-Linux-x86_64.sh
source ~/.bashrc

getchar()


# 获取项目源码
echo "2.获取项目源码"
git clone https://github.com/etangyushan/dog-vs-cat.git
conda env create -f dog-vs-cat/requirements/dog-linux.yml

getchar()


# 安装 kaggle
echo "3.安装 kaggle"
pip install --user kaggle
pip install kaggle-cli
mkdir ~/.kaggle
cp dog-vs-cat/requirements/kaggle.json ~/.kaggle
chmod 600 ~/.kaggle/kaggle.json
kaggle competitions download -c dogs-vs-cats-redux-kernels-edition

getchar()


# 安装 unzip 解压数据集
echo "4.安装 unzip 解压数据集"
sudo apt install unzip
unzip test.zip
unzip train.zip
mv test train dog-vs-cat/images

getchar()


## 配置 jupyter notebook
echo "5.配置 jupyter notebook"
source activate dog-project
jupyter notebook --generate-config
jupyter notebook password
echo "
vim ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.ip='*'
c.NotebookApp.open_browser = False
c.NotebookApp.port =8888
"

getchar()

# 启动项目后台运行
echo "6.启动项目后台运行"
nohup jupyter notebook &



