#FROM openjdk:8-jre-alpine
FROM openjdk:21-slim
EXPOSE 8080
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY $JAR_FILE demo-kotlin.jar
CMD ["java", "-jar", "demo-kotlin.jar"]