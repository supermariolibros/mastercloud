#!/bin/bash

HOST="ec2-3-21-170-163.us-east-2.compute.amazonaws.com"
USER="ec2-user"
KEY="./lemoncode1.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 --name lemoncodepracticacloudmarioli supermariolibros/lemoncodepracticacloudmarioli"