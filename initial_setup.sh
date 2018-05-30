#!/bin/sh

cd /specfem/specfem2d \
&& ./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi \
&& make

