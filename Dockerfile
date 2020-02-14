FROM ubuntu:latest

LABEL vcftools.version="v0.1.16"

RUN apt update
RUN apt install -y git
RUN git clone https://github.com/vcftools/vcftools.git
WORKDIR vcftools
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
