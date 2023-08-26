# 基础镜像
FROM nvidia/cuda:12.2.0-devel-ubuntu20.04

# 设置apt国内源
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
# 安装python/git
RUN apt-get update && apt-get install -y python3 python3-pip git

# 设置pip国内源
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 设置工作目录
WORKDIR /workspace

# 克隆repo
RUN git clone https://github.com/ggerganov/llama.cpp
# 安装依赖并编译
RUN cd llama.cpp && pip install -r requirements.txt && make

# 设置启动脚本
COPY start.sh .
CMD ["bash", "start.sh"]
