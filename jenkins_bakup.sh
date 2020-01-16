#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-use/jen_bakcup 
cd /home/ec2-use/jen_bakcup
sudo git init
sudo git add .
sudo git commit -m "backup for jenkins"
sudo git push https://github.com/msddarshan/jenkins_bakup.git master
