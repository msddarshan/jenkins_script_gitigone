#!/bin/bash

cd /var/lib/jnkins
ls -a | grep -w ".git"
if [ $? -ne 0 ]; then
	git init
fi 
touch .gitignor
echo workspace >> .gitigonre
sudo git add *
sudo git commit -m "jenkins backup through script on `date`"
git push https://github.com/msddarshan/jenkins_script_gitigone.git master
if [ $? -eq 0 ]; then
body=`echo -e "HI,\nJenkins backup tacken sucessfully"`
echo $body | mail -s "Regards Jenkin Backup on `date`" - c "mpkavya2411@gmail.com" "druvadarshan@gmail.com"
else
echo $body | mail -s "Regards Jenkin Backup failed on `date`" - c "druvadarshan@gmail.com"

