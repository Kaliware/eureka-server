FROM openjdk:17-jdk

VOLUME /tmp
WORKDIR /app

COPY target/*.jar /app/app.jar

ENV CONFIG_SERVER_HOST=

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
