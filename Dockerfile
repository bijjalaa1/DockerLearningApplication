FROM openjdk:17
FROM maven:3.9

WORKDIR /app/
COPY . /app/

RUN mvn clean install

CMD ["java", "-jar", "/app/target/dockerlearning-0.0.1.jar"]