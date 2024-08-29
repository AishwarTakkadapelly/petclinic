# Use an official OpenJDK runtime as a parent images
FROM openjdk:17-jdk

# Set the working directory in the containers
WORKDIR /app

# Copy the local jar file into the containers
COPY target/*.jar /app/spring-petclinic.jar

EXPOSE 8080

# Run the jar files
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
