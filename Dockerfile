FROM maven:3.6-jdk-11 as builder

WORKDIR /app
COPY pom.xml .
COPY src ./src

RUN mvn --no-transfer-progress -B package -DskipTests

FROM adoptopenjdk/openjdk11
COPY --from=builder /app/target/onlinestore-0.0.1-SNAPSHOT.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]
