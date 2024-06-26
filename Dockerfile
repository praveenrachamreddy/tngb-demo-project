# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/*.jar /app/tngb-demo-project.jar

# Make port 9090 available to the world outside this container
EXPOSE 9090

# Run the JAR file
ENTRYPOINT ["java", "-jar", "tngb-demo-project.jar"]
