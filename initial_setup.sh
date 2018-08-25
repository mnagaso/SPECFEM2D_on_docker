#!/bin/sh

cd ./specfem2d
./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi
make

