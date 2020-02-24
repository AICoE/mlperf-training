FROM nvidia/cuda:10.0-cudnn7-runtime-centos7
#FROM nvidia/cuda:9.0-cudnn7-devel-ubi7

WORKDIR /mlperf

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN ln -s /usr/local/cuda-10.0/lib64/libcudnn.so.7 /usr/local/cuda-10.0/lib64/libcudnn.so

ENV CUDA_HOME /usr/local/cuda 
ENV PATH /usr/local/cuda-10.0/bin${PATH:+:${PATH}}
ENV LD_LIBRARY_PATH /usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

RUN yum update -y && \
    yum install -y centos-release-scl && \
    yum install devtoolset-7 rh-python36 -y && \
    yum install -y \
    ca-certificates \
    build-essential \
    git \
    curl \
    wget \
    libjpeg-dev \
    libpng-dev \
    epel-release \
    python3 \
    python3-devel

ADD . /mlperf

RUN source scl_source enable rh-python36 devtoolset-7 && \
    pip install --upgrade pip && pip install -r rnn_translator/requirements.txt && \
	git clone https://www.github.com/nvidia/apex && \
	cd apex && \
	python setup.py install

RUN chmod +x rnn_translator/download_dataset.sh rnn_translator/verify_dataset.sh