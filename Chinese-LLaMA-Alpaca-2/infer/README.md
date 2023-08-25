## 简介

使用[Chinese-LLaMA-Alpaca-2](https://github.com/ymcui/Chinese-LLaMA-Alpaca-2)中的脚本进行推理，提供Web前端页面进行交互（支持多轮对话）。

## 下载模型

从[此处](https://github.com/ymcui/Chinese-LLaMA-Alpaca-2#%E6%A8%A1%E5%9E%8B%E4%B8%8B%E8%BD%BD)下载模型，可以在其基础上进行微调。

## 构建镜像

如有需要，可以先修改start.sh中的启动命令；之后运行如下命令构建镜像：

```bash
docker build -t cn-llama .
```

## 使用

运行如下命令启动镜像，注意需要挂载GPU、模型并进行端口映射：

```bash
docker run -it --rm --gpus '"device=0"' -v /path/to/base_model:/workspace/base_model -p 19324:19324 cn-llama
```

之后可以访问[http://localhost:19324](http://localhost:19324)进行对话。
