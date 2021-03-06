#!/bin/bash

# 运行环境配置 
echo "2.运行环境配置"
conda env create -f ../requirements/dog-linux.yml


# 安装 kaggle
echo "3.安装 kaggle"
pip install --user kaggle
pip install kaggle-cli
mkdir ~/.kaggle
cp kaggle.json ~/.kaggle
chmod 600 ~/.kaggle/kaggle.json
/home/ubuntu/.local/bin/kaggle competitions download -c dogs-vs-cats-redux-kernels-edition


# 安装 unzip 解压数据集
echo "4.安装 unzip 解压数据集"
sudo apt install unzip
unzip test.zip
unzip train.zip
mv test train ../images


## 配置 jupyter notebook
echo "5.配置 jupyter notebook"
source activate dog-project
jupyter notebook --generate-config
jupyter notebook password
cp jupyter_notebook_config.py  ~/.jupyter/jupyter_notebook_config.py

echo "
vim ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.ip='*'
c.NotebookApp.open_browser = False
c.NotebookApp.port =8888
"

# 修改默认的keras后台深度学习框架
cp keras.json /home/ubuntu/.keras/keras.json

# 启动项目后台运行
echo "6.启动项目后台运行"
cd 
echo "source activate dog-project"
echo "nohup jupyter notebook &"



