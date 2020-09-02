#/bin/bash

# Replace with your Jenkins URL and admin credentials
SERVER="http://jenkin:8080"
CRUMB=$(curl -u "jenkins:119181cb64cf0d443d11d9ce3fe08d0629" "$SERVER"/crumbIssuer/api/xml?xpath=concat\(//crumbRequestField,%22:%22,//crumb\))
#curl -X POST -u "jenkins:119181cb64cf0d443d11d9ce3fe08d0629" -H "$CRUMB" http://jenkin:8080/job/global-variables/build?delay=0sec

curl -u "jenkins:119181cb64cf0d443d11d9ce3fe08d0629" -H "$crumb" -X POST  http://jenkin:8080/job/aws_db_bkp/buildWithParameters?HOST_NAME=db_host&DB_NAME=test_db&BUCKET_NAME=jenkins-mysql-bkps


