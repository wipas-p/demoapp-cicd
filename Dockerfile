#FROM openjdk:8-jre-alpine
#FROM tomcat:9-jre8-alpine
FROM jboss/wildfly

COPY ./target/demo.war /opt/jboss/wildfly/standalone/deployments/demo.war

EXPOSE 8080
