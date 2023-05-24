FROM ubuntu:20.04

RUN sed -i "s@http://\(archive\|security\).ubuntu.com@http://cn.archive.ubuntu.com@g" /etc/apt/sources.list
RUN apt update -y

RUN apt install python3.9 python3.9-venv -y
RUN apt install vim git wget -y
RUN apt install libgomp1 libgl1-mesa-dri libgl1-mesa-dev libcurl4 libxcursor1 -y

WORKDIR /workspace

ENV PARAVIEW_FULLNAME ParaView-5.10.1-osmesa-MPI-Linux-Python3.9-x86_64

ADD $PARAVIEW_FULLNAME.tar.gz /workspace

ENV PATH=$PATH:/workspace/$PARAVIEW_FULLNAME/bin
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/workspace/$PARAVIEW_FULLNAME/bin

RUN git clone https://github.com/Kitware/trame.git


