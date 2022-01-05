#we will start with a base image
FROM openjdk:11

#you can proivide a maintainer information
LABEL Gopal Das <gopal1409@gmail.com>

#inside your jdk image i want to create a volume
VOLUME /tmp

#once the application is up an running it is a web based app we need to provide an internal port

EXPOSE 8080

#the application jar file
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} websocket-demo.jar

#to run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]
