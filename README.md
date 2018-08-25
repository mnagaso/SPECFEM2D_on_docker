# SPECFEM2D_on_docker  

Docker configuration files for running SPECFEM2D on non linux system.  

0. if Docker is not installed yet, it can be downloaded from https://www.docker.com/  
1. git clone or download this repository  
2. download https://github.com/geodynamics/specfem2d in the directory SPECFEM2D_on_docker  
3. verify if docker daemon is running  
4. `docker-compose up -d`  
5. `docker attach specfem2d_on_docker_spec_1`
6. `chmod a+x initial_setup.sh`  
7. `./initial_setup.sh` (this will compile the SPECFEM's source code.)
8. to leave this container, `ctrl + p + q`  
9. then to re-attach this container, redo step 4

The modifications done in the container will be reflected automatically on the local environment.
