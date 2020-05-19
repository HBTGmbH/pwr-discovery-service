FROM adoptopenjdk:8-jre-hotspot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} pwr-discovery-service.jar
CMD ["java", "-jar", "pwr-discovery-service.jar"]
