#!/bin/bash

 ansible-playbook playbook/webserver.yml -u vagrant -k 
 ansible-playbook playbook/loadbalancer.yml -u vagrant -k 
 ansible-playbook playbook/database.yml -u vagrant -k 
 #ansible-playbook playbook/stack_restart.yml -u vagrant -k

