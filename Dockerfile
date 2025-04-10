FROM openjdk:17-jdk-slim-buster

# Copy the built JAR directly
COPY build/libs/*.jar app.jar

# Optional additional files
RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add

# Run the JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]


