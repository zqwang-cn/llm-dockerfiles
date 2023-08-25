## 简介

[text-generation-webui](https://github.com/oobabooga/text-generation-webui)是一个功能丰富的大语言模型web UI，支持多种后端、多种模型、多种推理方式、LoRA微调等。

## 构建镜像

运行如下命令构建镜像：

```bash
docker build -t textgen .
```

## 使用

运行如下命令启动镜像，注意需要挂载GPU、模型（模型必须挂载至/workspace/text-generation-webui/models目录下）并进行端口映射：

```bash
docker run -it --rm --gpus '"device=0"' -v /path/to/mymodel:/workspace/text-generation-webui/models/mymodel -p 7860:7860 textgen
```

之后可以访问[http://localhost:7860](http://localhost:7860)，在Model标签页选择模型并加载之后即可进行对话。
