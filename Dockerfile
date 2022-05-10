FROM openjdk:11

VOLUME /tmp

EXPOSE 9090

ARG JAR_FILE=target/maven-jenkins-build-image.jar

ADD ${JAR_FILE} maven-jenkins-build-image.jar

#ADD target/maven-jenkins-build-image.jar maven-jenkins-build-image.jar

ENTRYPOINT ["java","-jar","/maven-jenkins-build-image.jar"]
