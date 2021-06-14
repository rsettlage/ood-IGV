FROM ubuntu:18.04
MAINTAINER Robert Settlage <rsettlag@vt.edu>

RUN mkdir /apps

RUN apt update && apt-get install -y \
    zip \
    wget \
    gcc \
    libfreetype6 \
    libglib2.0-0 \
    libgl1-mesa-dev \
    libglu1-mesa \
    libgtk2.0-dev \
    libgtk2.0-0 \
    libncurses5 \
    net-tools \
    python3 \
    python3-pip \
    libxext6 \
    libxrender1 \
    software-properties-common \
    libxtst6 \
    libxi6

RUN cd /apps \
  && wget https://data.broadinstitute.org/igv/projects/downloads/2.9/IGV_Linux_2.9.4_WithJava.zip \
  && unzip IGV_Linux_2.9.4_WithJava.zip

RUN sed -i 's/-Xmx4g/-Xmx8g/' /apps/IGV_Linux_2.9.4/igv.sh
