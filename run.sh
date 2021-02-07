#!/bin/bash
nohup java -jar  -DlogPath=/usr/local/tomcat/logs/ -Dport=8080 -Duser.timezone="Asia/Kolkata" /var/install/zaakpay/zaak-self-onboarding/ROOT.war > /usr/local/tomcat/logs/console.log &
