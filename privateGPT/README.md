## 简介

[privateGPT](https://github.com/imartinez/privateGPT)可以在本地通过大语言模型对各类文档进行QA。

## 构建镜像

运行如下命令构建镜像：

```bash
docker build -t private-gpt .
```

## 使用

运行如下命令启动镜像，注意需要挂载GPU、模型、文档目录、配置文件并进行端口映射（如有需要也可挂载数据库目录与缓存目录）：

```bash
docker run -it --rm --gpus '"device=0"' -v /path/to/model:/workspace/privateGPT/model -v /path/to/documents:/workspace/privateGPT/source_documents -v /path/to/env:/workspace/privateGPT/.env private-gpt
```

之后可以在命令行进行QA。
