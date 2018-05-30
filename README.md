# SPECFEM2D_on_docker  

Docker configuration files for running SPECFEM2D on non linux system.  

0. if Docker is not installed yet, it can be downloaded from https://www.docker.com/  
1. git clone or download this repository  
2. verify if docker daemon is running  
3. `docker-compose up -d`  
4. `docker attach specfem2d_on_docker_spec_1`
5. `chmod a+x initial_setup.sh`  
6. `./initial_setup.sh` (this will download the SPECFEM's source code and compile it.)
7. to leave this container, `ctrl + p + q`  
8. then to re-attach this container, redo step 4

The modifications done in the container will be reflected automatically on the local environment.
