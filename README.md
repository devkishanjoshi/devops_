# devops_

jenkins: Docker

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



Docker Push Image to Dockerhub: 
```
git clone  https://github.com/devkishanjoshi/my-flask-app.git
cd my-flask-app/
git checkout master
docker build  -t myapp:v1    .
docker image ls
docker tag  myapp:v1   devil1211/myapp:v1
docker login
docker push devil1211/myapp:v1
```

