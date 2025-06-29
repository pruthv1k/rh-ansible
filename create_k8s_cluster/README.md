Kubernetes Single Master Cluster Setup using Ansible role
=========

A ansible role to deploy a Single user Kubernetes Cluster on rpm based linux machine

Requirements
------------

1. RPM based Linux machines (CentOS, RHEL, Fedora etc).
2. Python 2.x on Control and Worker nodes.
3. Ansible packages on the Control nodes.

Role Variables
--------------

Environment variables are defined in vars/main.yml

It contains all the information regarding the packages and services along with the api-server control node address. 

Steps to execute the role for deploying the cluster.
1. change the api-server {master node address } in the vars/main.yml file.
2. Execute the Ansible Playbbok using
     - ansible-playbook newRole.yml
     
Author information
------------------

Pruthvi S Kumar 

email - pruthviskumar@hotmail.com

