FROM frolvlad/alpine-glibc

MAINTAINER Atsushi Ohta <ohta.atsushi.2c@kyoto-u.ac.jp> / Crop Evolution Lab. Kyoto University

ENV PATH=/opt/conda/bin:$PATH \
    LANG=C.UTF-8

WORKDIR /tmp

RUN apk add --no-cache bash wget && \
    wget -q --no-check-certificate https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && \
    rm -f Miniconda3-latest-Linux-x86_64.sh

RUN /opt/conda/bin/conda install --yes biopython python=3.5 pandas numpy scipy matplotlib seaborn ipython ipython-notebook jupyter pip

RUN mkdir /root/data

VOLUME ["/root/data"]

WORKDIR /root/data

EXPOSE 8888
CMD ["/opt/conda/bin/jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--port=8888", "--allow-root"]

# <<< Comments >>>
# [Usage] docker run --rm -i -p 8888:8888 -t jupyter
