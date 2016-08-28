FROM ubuntu

MAINTAINER Richard Laub <Richard.Laub@colorado.edu>

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 git

RUN wget https://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh && \
    bash Anaconda3-4.1.1-Linux-x86_64.sh -b && \
    rm Anaconda3-4.1.1-Linux-x86_64.sh

ENV PATH /root/anaconda3/bin:$PATH

EXPOSE 8888
