FROM adoptopenjdk:8-jre-hotspot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} pwr-discovery-service.jar
COPY ./config/docker-logback.xml /logback.xml
CMD ["java", "-jar", "pwr-discovery-service.jar","-Dlogging.config=/logback.xml"]
