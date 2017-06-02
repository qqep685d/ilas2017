FROM ubuntu:trusty

MAINTAINER Atsushi Ohta <ohta.atsushi.2c@kyoto-u.ac.jp> / Crop Evolution Lab. Kyoto University

#——————————————

# Update/Upgrade
RUN apt-get update && apt-get upgrade -y

# TextEditor, git, wget, python, etc.
RUN apt-get install -y wget make gcc unzip \
&& apt-get install -y git python \
&& apt-get install -y build-essential zlib1g-dev libncurses-dev \
&& apt-get install -y vim nano

RUN mkdir Applications
WORKDIR /Applications

#——————— For DNA-seq ———————

# install bwa
RUN wget http://downloads.sourceforge.net/project/bio-bwa/bwa-0.7.12.tar.bz2 \
&& tar -xjvf bwa-0.7.12.tar.bz2 \
&& make -C /Applications/bwa-cc

# install samtools-1.3.1
RUN wget https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2 \
&& tar -xjvf samtools-1.3.1.tar.bz2 \
&& make -C /Applications/samtools-1.3.1

# install bcftools
RUN wget https://github.com/samtools/bcftools/releases/download/1.3.1/bcftools-1.3.1.tar.bz2 \
&& tar -xjvf bcftools-1.3.1.tar.bz2 \
&& make -C /Applications/bcftools-1.3.1

# install htslib
RUN wget https://github.com/samtools/htslib/releases/download/1.3.1/htslib-1.3.1.tar.bz2 \
&& tar -xjvf htslib-1.3.1.tar.bz2 \
&& make -C /Applications/htslib-1.3.1

#——————— For RNA-seq ———————

# install bowtie2 and tophat2
RUN apt-get install -y bowtie2 \
&& wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.0.14.Linux_x86_64.tar.gz \
&& tar zxvf tophat-2.0.14.Linux_x86_64.tar.gz \
&& wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz \
&& tar -zxvf cufflinks-2.2.1.Linux_x86_64.tar.gz

#——————— For Phylogenetics ———————

# install phylogenetic softwares
RUN apt-get install -y mafft \
&& apt-get install -y muscle \
&& apt-get install -y raxml \
&& apt-get install -y phyml

#——————————————

ENV PATH $PATH:/Applications/bwa-0.7.12:/Applications/samtools-1.3.1:/Applications/bcftools-1.3.1:/Applications/htslib-1.3.1:/Applications/tophat-2.0.14.Linux_x86_64:/Applications/cufflinks-2.2.1.Linux_x86_64

#——————————————

RUN mkdir /root/data
VOLUME ["/root/data"]
WORKDIR /root/data
