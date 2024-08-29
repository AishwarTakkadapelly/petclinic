# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the local jar file into the containers
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar

EXPOSE 8081

# Run the jar files
ENTRYPOINT ["java", "-jar", "spring-petclinic-3.3.0-SNAPSHOT.jar"]
