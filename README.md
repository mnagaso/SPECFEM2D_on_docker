![Logo](./Logo_mm.png)

# SPECFEM2D_on_docker  

Docker configuration files for running SPECFEM2D on non linux system.  

0. if Docker is not installed yet, it can be downloaded from https://www.docker.com/  
1. git clone or download this repository by `git clone https://github.com/mnagaso/SPECFEM2D_on_docker` on cmd.     
2. download https://github.com/geodynamics/specfem2d in the directory SPECFEM2D_on_docker (`cd SPECFEM2D_on_docker` then `git clone --branch devel https://github.com/geodynamics/specfem2d`)  
3. verify if docker daemon is running  
4. `docker-compose up -d`  
5. `docker attach specfem2dondocker_spec_1`
6. `chmod a+x initial_setup.sh`  
7. `./initial_setup.sh` (this will compile the SPECFEM's source code.)
8. to leave this container, `ctrl + p + q`  
9. for re-attaching to this container, redo step 4

The modifications done in the container will be reflected automatically on the local environment.
