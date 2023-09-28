# devops_
### Webhook Testing


### jenkins: Docker

```
sudo yum install git
sudo yum install docker
sudo systemctl start docker
sudo systemctl status  docker
sudo systemctl enable  docker

sudo usermod -a  -G   docker  ec2-user
sudo usermod -a  -G   docker  jenkins

sudo systemctl restart jenkins
```

Webhook: 

```
http://13.235.86.228:8080/github-webhook/
```
Change IP in webhook
