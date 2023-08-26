# 量化方法
METHOD=q4_0
# ggml fp16模型文件名
FP16_FILE=model/ggml-model-f16.gguf
# ggml量化模型文件名
QT_FILE=model/ggml-model-$METHOD.gguf

# 将huggingface模型转换为ggml fp16格式
if [ ! -f $FP16_FILE ];
then
python3 llama.cpp/convert.py model
fi

# 将ggml fp16模型进行量化
if [ ! -f $QT_FILE ];
then
llama.cpp/quantize $FP16_FILE $QT_FILE $METHOD
fi

# 启动web服务
llama.cpp/server -m $QT_FILE -c 4096 -ngl 1 --host 0.0.0.0
