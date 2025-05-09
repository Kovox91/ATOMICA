#!/bin/bash
uv env atomicaenv --python=3.9
uv add numpy==1.26.4 -y
uv add torch==2.1.1+cu118 --extra-index-url https://download.pytorch.org/whl/cu118
uv add torch_scatter torch_cluster --find-links https://pytorch-geometric.com/whl/torch-2.1.1+cu118.html
uv add tensorboard==2.18.0
uv add e3nn==0.5.1 # possibly not compatible with e3nn > 0.5.4
uv add scipy==1.13.1
uv add rdkit-pypi==2022.9.5
uv add openbabel-wheel==3.1.1.20
uv add biopython==1.84
uv add biotite==0.40.0
uv add atom3d
uv add wandb==0.18.2
uv add orjson

# plotting
uv add umap-learn
uv add matplotlib
uv add seaborn
uv add plotly