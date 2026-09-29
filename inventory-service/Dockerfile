FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY inventory-service/pom.xml inventory-service/pom.xml
COPY inventory-service/src inventory-service/src
RUN mvn -pl inventory-service -am clean package -DskipTests
FROM eclipse-temurin:17-jre
COPY --from=build /app/inventory-service/target/inventory-service-1.0.0.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
