# 区分猫和狗的图片

** 开题报告 word 版: proposal.docx **

** 开题报告 pdf 版: proposal.pdf **

** 项目报告 word 版: report.docx **

** 项目报告 pdf 版: report.pdf **

** 模型训练：Introduction.ipynb **

** 模型训练输出文档：Introduction.html **

# 开发软件：
**jupyter notebook, OpenCV, tensorflow, Keras**


# 配置开发环境：AWS
## 1 快速启动-》实例选择：
Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-04169656fea786776


## 2 安装anaconda
wget http://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh

bash Anaconda3-4.3.0-Linux-x86_64.sh

/home/ubuntu/.bashrc
export PATH=/home/ubuntu/anaconda3/bin:$PATH

## 3 克隆项目 dog-vs-cat
https://github.com/etangyushan/dog-vs-cat.git

## 4 安装开发环境
conda env create -f requirements/environment.yaml
source activate dog-project

cd ~
jupyter notebook --generate-config
jupyter notebook password

vim ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.ip='*'
c.NotebookApp.open_browser = False
c.NotebookApp.port =8888


## 5 安装kaggle
不要在conda 环境下安装
pip install --user kaggle
pip install kaggle-cli
下载kaggle.json拷贝kaggle.json 到 .kaggle

chmod 600 /home/ubuntu/.kaggle/kaggle.json

kaggle competitions download -c dogs-vs-cats-redux-kernels-edition

## 6 解压训练文件
sudo apt install unzip

unzip test.zip 
unzip train.zip

mv test train dog-vs-cat/images



## 7 后台启动 jupyter notebook
source activate dog-project
nohup jupyter notebook &

