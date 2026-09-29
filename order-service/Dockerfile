FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY order-service/pom.xml order-service/pom.xml
COPY order-service/src order-service/src
RUN mvn -pl order-service -am clean package -DskipTests
FROM eclipse-temurin:17-jre
COPY --from=build /app/order-service/target/order-service-1.0.0.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
