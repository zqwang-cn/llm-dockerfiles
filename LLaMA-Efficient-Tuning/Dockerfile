# 基础镜像
FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

# 设置apt与pip国内源
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装git
RUN apt-get update && apt-get install -y git

# 设置工作目录
WORKDIR /workspace

# 克隆repo
RUN git clone https://github.com/hiyouga/LLaMA-Efficient-Tuning.git
# 安装依赖
RUN cd LLaMA-Efficient-Tuning && pip install -r requirements.txt
# 降级transformers以避免报错
RUN pip install transformers==4.29.1

# 设置启动脚本
COPY start.sh .
CMD ["bash", "start.sh"]
