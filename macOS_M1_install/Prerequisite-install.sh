#!/bin/bash
# Contributed by Michael Tay, for MacOS M1 installation
curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh -o ~/Downloads/Miniforge3-MacOSX-arm64.sh
chmod +x ~/Downloads/Miniforge3-MacOSX-arm64.sh
sh ~/Downloads/Miniforge3-MacOSX-arm64.sh
rm ~/Downloads/Miniforge3-MacOSX-arm64.sh
source ~/miniforge3/bin/activate
python -m pip uninstall -y tensorflow-macos
python -m pip uninstall -y tensorflow-metal
conda install -y -c apple tensorflow-deps --force-reinstall
python -m pip install tensorflow-macos
python -m pip install tensorflow-metal
python -m pip install torchvision
conda env remove -n w207_final
conda create -n w207_final -y
conda activate w207_final
conda install -y ipykernel
ipython kernel install --user --name=w207
conda install -y numpy
conda install -y matplotlib
conda install -y pandas
conda install -y seaborn
conda install -y tensorflow
conda install -y jupyterlab
conda install -y opencv
conda install -c conda-forge -y tqdm
conda install -y scikit-learn
conda deactivate
conda activate w207_final