FROM ojbc/java8-tomcat8:latest
WORKDIR /opt/app/
EXPOSE 8080
COPY Root.war /usr/local/tomcat/webapps/
RUN mkdir /var/log/tomcat && \
COPY run.sh
RUN chmod 0500 run.sh
CMD [ "sh", "run.sh" ]

