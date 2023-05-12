#!/usr/bin/env bash
COUNT=${2:-12}
export CUDA_VISIBLE_DEVICES=0
wandb agent --count $COUNT $1 &
export CUDA_VISIBLE_DEVICES=1
wandb agent --count $COUNT $1 &
export CUDA_VISIBLE_DEVICES=2
wandb agent --count $COUNT $1 &
export CUDA_VISIBLE_DEVICES=3
wandb agent --count $COUNT $1 &
wait
