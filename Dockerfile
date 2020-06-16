FROM openjdk:8u191-jre-alpine3.9

VOLUME /tmp

ADD /target/microservice-seller-0.0.1-SNAPSHOT.jar microservice-seller-0.0.1-SNAPSHOT.jar

EXPOSE 8081

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservice-seller-0.0.1-SNAPSHOT.jar"]