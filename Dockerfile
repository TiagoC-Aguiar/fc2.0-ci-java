FROM gradle:6.8-jdk11 as builder

WORKDIR /app
COPY . .
RUN gradle clean fatJar


FROM openjdk:11.0-jre-slim
COPY --from=builder /app/build/libs/cursoci-all-1.0-SNAPSHOT.jar /app/cursoci.jar

CMD ["java", "-jar", "/app/cursoci.jar"]
