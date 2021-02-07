#!/bin/bash
nohup java -jar  -DlogPath=/usr/local/tomcat/logs/ -Dport=8080 -Duser.timezone="Asia/Kolkata" /usr/local/tomcat/webapps/demo-0.0.1-SNAPSHOT.jar > /usr/local/tomcat/logs/console.log &
