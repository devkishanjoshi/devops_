# devops_
### Webhook Testing


### jenkins: Docker

```
sudo yum install docker
sudo systemctl start docker
sudo systemctl status  docker
sudo systemctl enable  docker

sudo usermod -a  -G   docker  ec2-user
sudo usermod -a  -G   docker  jenkins

sudo systemctl restart jenkins
```
