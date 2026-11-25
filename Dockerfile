
FROM tomcat:10.1-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/maven-demo-1.0.jar /usr/local/tomcat/webapps/ROOT.jar

EXPOSE 8080

CMD ["catalina.sh", "run"]
