FROM stringang/centos-s6

# https://github.com/huggingface/transformers/blob/main/docker/transformers-pytorch-gpu/Dockerfile

ENV PYTHON_VERSION=3.6

# Install conda and python.
# NOTE new Conda does not forward the exit status... https://github.com/conda/conda/issues/8385
RUN curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-4.7.12-Linux-x86_64.sh  && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b && \
    rm ~/miniconda.sh \

ENV PATH=/root/miniconda3/bin:$PATH

ARG PYTORCH='2.4.0'