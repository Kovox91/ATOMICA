#!/bin/bash
#SBATCH -J atomica_affinity


~/miniconda3/envs/atomicaenv/bin/torchrun --nnodes=1 --nproc_per_node=1 --standalone train.py \
    --train_set ../../../data/05_model_input/train_set.pkl \
    --valid_set ../../../data/05_model_input/valid_set.pkl \
    --task PDBBind \
    --num_workers 1 \
    --gpus -1 \
    --lr 1e-4 \
    --max_epoch 3 \
    --atom_hidden_size 32 \
    --block_hidden_size 32 \
    --n_layers 4 \
    --edge_size 32 \
    --k_neighbors 8 \
    --max_n_vertex_per_gpu 512 \
    --max_n_vertex_per_item 256 \
    --global_message_passing \
    --save_dir ../../../06_models/model_checkpoints \
    --pretrain_weights ../../../data/01_raw/pretrain_model_weights.pt \
    --pretrain_config ../../../data/01_raw/pretrain_model_config.json \
    --run_name ATOMICA-Affinity \
    --use_wandb \