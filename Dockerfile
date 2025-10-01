# Use OpenJDK 8 base image
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /app

# Copy source files
COPY . .

# Compile Java files
RUN javac App.java

# Run the application
CMD ["java", "App"]
