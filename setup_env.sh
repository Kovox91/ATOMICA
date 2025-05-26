#!/bin/bash
# uv env atomicaenv --python=3.9
uv pip install numpy==1.26.4
uv pip install torch==2.1.1+cu118 --extra-index-url https://download.pytorch.org/whl/cu118
uv pip install torch_scatter torch_cluster --find-links https://pytorch-geometric.com/whl/torch-2.1.1+cu118.html
uv pip install tensorboard==2.18.0
uv pip install e3nn==0.5.1 # possibly not compatible with e3nn > 0.5.4
uv pip install scipy==1.13.1
uv pip install rdkit-pypi==2022.9.5
uv pip install openbabel-wheel==3.1.1.20
uv pip install biopython==1.84
uv pip install biotite==0.40.0
uv pip install atom3d
uv pip install wandb==0.18.2
uv pip install orjson

# plotting
uv pip install umap-learn
uv pip install matplotlib
uv pip install seaborn
uv pip install plotly