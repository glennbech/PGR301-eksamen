FROM adoptopenjdk/openjdk11 as builder

COPY pom.xml /app/pom.xml
COPY src /app/src

RUN mvn --no-transfer-progress -B package -DskipTests

FROM adoptopenjdk/openjdk8
COPY --from=builder /app/target/onlinestore-0.0.1-SNAPSHOT.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]