FROM adoptopenjdk:11-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot executable JAR into the container
COPY target/your-spring-boot-app.jar app.jar

# Expose the port that your Spring Boot application listens on (replace 8080 with your application's port)
EXPOSE 8081
# Set the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
