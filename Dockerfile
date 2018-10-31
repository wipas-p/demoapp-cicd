FROM openjdk:8-jre-alpine

COPY ./target/demo.war demo.war

ENTRYPOINT ["/usr/bin/java", "-jar", "demo.war"]
EXPOSE 8080
