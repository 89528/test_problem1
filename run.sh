#!/bin/bash
nohup java -jar  -DlogPath=/usr/local/tomcat/logs/ -Dport=8080 -Duser.timezone="Asia/Kolkata" /usr/local/tomcat/webapps/Root.jar > /usr/local/tomcat/logs/console.log &
