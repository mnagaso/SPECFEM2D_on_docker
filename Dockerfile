FROM debian:jessie-slim

RUN apt-get update
RUN apt-get clean
RUN apt-get install build-essential checkinstall python3-dev vim git zlib1g-dev scotch gfortran openmpi-bin openmpi-doc libopenmpi-dev dos2unix -y

RUN git clone --branch devel https://github.com/geodynamics/specfem2d
WORKDIR /specfem2d
RUN ./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi
RUN make