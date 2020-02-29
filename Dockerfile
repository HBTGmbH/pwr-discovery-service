FROM openjdk:8
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} pwr-discovery-service.jar
CMD ["java", \
     "-Dlogging.file=/logs/pwr-discovery.log", \
     "-jar", \
      "pwr-discovery-service.jar" \
     ]
