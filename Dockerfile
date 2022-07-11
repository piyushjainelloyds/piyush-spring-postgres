FROM openjdk:8-jdk-alpine
LABEL maintainer="piyushjain09@gmail.com"
VOLUME /main-app
ADD build/libs/spring-boot-postgresql-base-project-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar","/app.jar"]