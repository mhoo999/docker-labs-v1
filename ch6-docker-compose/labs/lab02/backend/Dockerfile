FROM gradle:8.8-jdk17-alpine
WORKDIR /app
COPY . .
RUN gradle bootJar
EXPOSE 8080
CMD ["java", "-jar", "build/libs/hello-world-v1-0.0.1-SNAPSHOT.jar"]