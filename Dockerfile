FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /app
COPY ./target/java-maven-app-*.jar app.jar
CMD java -jar app-*.jar
