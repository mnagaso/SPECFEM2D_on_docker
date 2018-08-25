FROM debian:jessie-slim

RUN apt-get update
RUN apt-get clean
RUN apt-get install build-essential checkinstall python3-dev vim install git zlib1g-dev scotch gfortran openmpi-bin openmpi-doc libopenmpi-dev dos2unix -y

WORKDIR /specfem
RUN git clone --branch devel https://github.com/geodynamics/specfem2d

ADD initial_setup.sh initial_setup.sh
RUN dos2unix initial_setup.sh
RUN chmod a+x initial_setup.sh && ./initial_setup.sh
