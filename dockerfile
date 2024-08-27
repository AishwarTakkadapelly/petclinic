# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the local jar file into the container
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar

EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "spring-petclinic-3.3.0-SNAPSHOT.jar"]
