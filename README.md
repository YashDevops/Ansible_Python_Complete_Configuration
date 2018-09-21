# Ansible_Python_Complete_Configuration
## This is a Three Tier Python application configuraiton using ansible 

## Vagrant
There is a file called vagrant just use the following commnad

```shell
vagrant up
```

### This will create 4 box naming app01 , app02 , lb01 , db01


## lb01 (Load balancer)
#### To configure the lb01 use the following command

```shell

 ansible-playbook playbook/loadbalancer.yml -u vagrant -k

```
The loadbalancing is done by using nginx and the following tasks are achieve using ansible
### 1) The apt install are done using {{item}} loops and 
### 2) The configuration is done using jinja2 template to provide the /etc/nginx/site-available/demo.conf
### 3) The Default index.html is made absent using file module
### 4) link creation from site-available to site-enabled is done using file module 



## db01 (DataBase Server)
#### To configure the db01 use the following command
```shell
ansible-playbook playbook/database.yml -u vagrant -k
```
The database is done by using nginx and the following tasks are achieve using ansible
### 1) The apt install are done using {{item}} loops and 
### 2) The database and the user and passowrd and priveledges are done using ansible playbook using mysql_db
### 3) Enabling db server to listen on all port is done using editing a specific line on file by using lineinfile module


## app01 and app02 (Webserver)

#### To configure the app01 and app02 use the following command
```shell
ansible-playbook playbook/webserver.yml -u vagrant -k

```
The app server configuration is done by using apache2 and the following tasks are achieve using ansible
### 1) The apt install are done using {{item}} loops and 
### 2) Thec complete app is copied using ansible copy module
### 3) The virtual environment is created using pip module 
### 4) All the configuration changes are done using file module
