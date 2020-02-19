FROM continuumio/miniconda

RUN conda config --add channels bioconda
RUN conda install -y gvcftools htslib
