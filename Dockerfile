FROM  tensorflow/tensorflow:latest-gpu-jupyter
RUN pip install tensorflow jupyterlab
WORKDIR /work

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --ip=0.0.0.0 --allow-root --LabApp.token=''"]
