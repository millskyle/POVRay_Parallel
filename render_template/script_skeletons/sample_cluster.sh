#!/bin/bash
#PBS -l walltime=08:00:00
#PBS -l pmem=2000mb
#PBS -r n
#PBS -l procs=8
#PBS -N "!!!COUNT!!!_!!!INPUTFILE!!!_render"

cd $PBS_O_WORKDIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/boost/lib:/global/software/gcc-rh6/boost-1.54.0-gcc44/lib

date >> datefile

!!!POVRAY_COMMAND!!!  

date >> datefile







