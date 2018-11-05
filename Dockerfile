#FROM openjdk:8-jre-alpine
FROM tomcat:9-jre8-alpine

COPY ./target/demo.war /usr/local/tomcat/webapps/ROOT.war

ENTRYPOINT ["/usr/bin/java", "-jar", "demo.war"]
EXPOSE 80
