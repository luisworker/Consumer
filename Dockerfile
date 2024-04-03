# Usar una imagen base de Java 8
FROM openjdk:8-jdk-alpine

# Copiar el archivo jar a la imagen Docker
COPY target/test-1.0-SNAPSHOT.jar app.jar

# Ejecutar la aplicación Java cuando se inicie el contenedor Docker
ENTRYPOINT ["java","-jar","/app.jar"]