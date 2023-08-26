## 简介

[llama.cpp](https://github.com/ggerganov/llama.cpp)使用纯C/C++进行llama等大语言模型的推理，无需安装pytorch/huggingface transformers等依赖。

## 构建镜像

如有需要，可以先修改start.sh中的启动命令；之后运行如下命令构建镜像：

```bash
docker build -t llama-cpp .
```

## 使用

运行如下命令启动镜像，注意需要挂载GPU、模型并进行端口映射：

```bash
docker run -it --rm --gpus '"device=0"' -v /path/to/model:/workspace/model -p 8080:8080 llama-cpp
```

之后可以访问[http://localhost:8080](http://localhost:8080)进行对话。
