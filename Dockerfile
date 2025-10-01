FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . .
RUN javac App.java
CMD ["java", "App"]

