FROM debian:jessie-slim

RUN apt-get update
RUN apt-get clean
RUN apt-get install build-essential checkinstall -y
RUN apt-get install python3-dev -y
RUN apt-get install vim -y
RUN apt-get install git -y
RUN apt-get install zlib1g-dev scotch gfortran libopenmpi-dev -y

# if you use debian:strech
#RUN echo deb http://downloads.skewed.de/apt/stretch stretch main >> /etc/apt/sources.list
#RUN echo deb-src http://downloads.skewed.de/apt/stretch stretch main >> /etc/apt/sources.list
#RUN sed -i 's/jessie/stretch/g' /etc/apt/sources.list
#RUN apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25
#RUN apt-get update
#RUN apt-get -y upgrade

WORKDIR /specfem
ADD specfem2d specfem2d
#RUN cd /specfem/specfem2d \
#    && ./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi \
#    && make
ADD initial_setup.sh initial_setup.sh

WORKDIR /specfem
