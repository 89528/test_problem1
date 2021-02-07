FROM ojbc/java8-tomcat8:latest
#RUN apt-get update && apt-get install apt-transport-https -y && apt-get install -y nginx && chown -R www-data:www-data /var/lib/nginx
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx","/var/www/html"]
COPY default.conf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/sites-enabled/default
WORKDIR /opt/app/
EXPOSE 8080
COPY target/Root.jar /usr/local/tomcat/webapps/
RUN mkdir /var/log/tomcat && \
ln -s /usr/local/tomcat/logs/ /var/log/tomcat
COPY run.sh
RUN chmod 0500 run.sh
CMD [ "sh", "run.sh" ]

