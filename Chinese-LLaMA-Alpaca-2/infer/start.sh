# 使用huggingface transformers进行推理，加载完整版模型
python Chinese-LLaMA-Alpaca-2/scripts/inference/gradio_demo.py --base_model base_model

# 使用huggingface transformers进行推理，加载基础模型与LoRA模型
# python Chinese-LLaMA-Alpaca-2/scripts/inference/gradio_demo.py --base_model base_model --lora_model lora_model

# 使用vllm加速推理，目前只能使用完整版模型
# python Chinese-LLaMA-Alpaca-2/scripts/inference/gradio_demo.py --base_model base_model --use_vllm
