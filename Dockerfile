FROM ubuntu:latest

LABEL vcftools.version="v0.1.16"

RUN apt-get update && apt-get install -y \
    g++ \
    pkg-config \
    wget \
    zlib1g-dev
RUN wget https://github.com/vcftools/vcftools/releases/download/v0.1.16/vcftools-0.1.16.tar.gz
RUN tar -xvf vcftools-0.1.16.tar.gz
WORKDIR vcftools-0.1.16
RUN ./configure
RUN make
RUN make install
