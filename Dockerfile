FROM openjdk:8-jdk-alpine
LABEL maintainer="yankolyaspas@gmail.com"
EXPOSE 8761
ARG JAR_FILE=target/discovery-1.0.1.jar
ADD ${JAR_FILE} discovery.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/discovery.jar"]

