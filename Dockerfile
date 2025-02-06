# Use a base image with Java (change Java version as needed)
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file into the container (use a wildcard to match any .jar file in the target directory)
COPY target/*.jar /app/my-app.jar

# Expose the port the app will run on (e.g., 8080 for a web service)
EXPOSE 8080

# Command to run the jar file
CMD ["java", "-jar", "my-app.jar"]
