CONFIG=lavis/projects/blip2/train/advqa_t5_elm.yaml

HF_ENDPOINT=https://hf-mirror.com python -m torch.distributed.run \
    --nproc_per_node=8 \
    --master_port=10041 \
    scripts/train.py --cfg-path $CONFIG