#基于的基础镜像
FROM python:3.8.18
#代码添加到code文件夹
ADD . /usr/src/app/uniform/yolotest
# 设置code文件夹是工作目录
WORKDIR /usr/src/app/uniform/yolotest
# 安装支持
RUN pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu116 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -r requirements.txt