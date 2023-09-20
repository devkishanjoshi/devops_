```
sudo yum update 
sudo yum install python3
sudo yum install python3-pip
pip3 install ansible 
ansible --version



ansible all -a id 
ansible-playbook webserver.yaml
ansible-doc package

ansible all -m copy  -a   "src=index.html   dest=/var/www/html "

ansible all  -m  setup
```

## ansible roles

```
ansible-galaxy list
ansible-galaxy init my-role
```
