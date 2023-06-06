FROM  nvidia/cuda:11.8.0-base-ubuntu22.04
RUN apt-get update && apt-get install -y \
    python3-pip \
    sudo \
    wget
RUN ln -s /usr/bin/python3.10 /usr/bin/python
RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN pip install tensorflow
RUN pip install torch torchvision torchtext torchaudio --index-url https://download.pytorch.org/whl/cu118
RUN pip install scikit-learn
RUN pip install pandas matplotlib torchviz torchinfo
RUN pip install torchdata portalocker
RUN apt-get install -y graphviz

WORKDIR /work

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --ip=0.0.0.0 --allow-root --LabApp.token=''"]
