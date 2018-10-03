![Logo](./Logo_mm.png)

# SPECFEM2D on Docker  

Docker configuration files for running SPECFEM2D on non linux system.  

0. if Docker is not installed yet, it can be downloaded from https://www.docker.com/  
1. download this repository or git clone by `git clone https://github.com/mnagaso/SPECFEM2D_on_docker` on cmd.     
2. `cd SPECFEM2D_on_docker`
3. verify if docker daemon is running  
4. `docker-compose up -d`  
5. `docker attach specfem2d_on_docker_spec_1`  
Compiled specfem2d and source are in /specfem2d  
Only the files put in /workspace will be shared with the host environment.  
When you erase the docker container, only the files in this /workspace will be kept and others will be lost.  
6. to leave this container, `ctrl + p + q`  
7. for re-attaching to this container, redo step 4

The modifications done in the container will be reflected automatically on the local environment.  

This script does not support docker toolbox (docker system working with virtual box).
