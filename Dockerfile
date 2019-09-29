FROM tomcat:8.0-alpine

COPY static.zip /usr/local/tomcat/webapps/
COPY server.xml /usr/local/tomcat/conf/
RUN apk add --no-cache unzip
RUN cd /usr/local/tomcat/webapps/
RUN unzip /usr/local/tomcat/webapps/static.zip -d /usr/local/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh", "run"]
