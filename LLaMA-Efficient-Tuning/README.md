## 简介

[LLaMA-Efficient-Tuning](https://github.com/hiyouga/LLaMA-Efficient-Tuning)可以使用统一的接口对多种大语言模型使用多种数据集进行预训练、指令微调、强化学习微调等操作。

## 构建镜像

运行如下命令构建镜像：

```bash
docker build -t llama-etuning .
```

## 使用

运行如下命令启动镜像，注意需要挂载GPU、模型、检查点目录并进行端口映射：

```bash
docker run -it --rm --gpus '"device=0"' -v /path/to/mymodel:/workspace/LLaMA-Efficient-Tuning/models/mymodel -v /path/to/saves:/workspace/LLaMA-Efficient-Tuning/saves -p 7860:7860 llama-etuning
```

之后可以访问[http://localhost:7860](http://localhost:7860)进行预训练、微调与推理。目前web版只支持单GPU，如需使用多GPU可以参考[这里](https://github.com/hiyouga/LLaMA-Efficient-Tuning#distributed-training)，进入镜像手动执行命令。
