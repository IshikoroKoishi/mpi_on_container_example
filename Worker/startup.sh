#!/bin/sh

ssh-keygen -A
/usr/sbin/sshd -D

# On master node
#mpiexec --allow-run-as-root -hostfile hostfile -np 2 ./mpi-ping.exe -B -r 1 1m
