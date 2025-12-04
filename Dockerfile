FROM tensorflow/build:2.20-python3.11

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        vim nano less \
        libclang-rt-18-dev && \
    rm -rf /var/lib/apt/lists/*

ENV CC=clang \
    CXX=clang++ \
    TF_ENABLE_XLA=1

WORKDIR /tensorflow

