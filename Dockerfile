# Använda OpenJDK som basimage
FROM openjdk:17

# Valfritt, men bra för att sätta metadata relaterad till bilden
LABEL maintainer="your_email@example.com"

# Porten applikationen kommer att köras på
EXPOSE 8080

# Lägga till körbar JAR-fil till containern
ADD target/demo-0.0.1-SNAPSHOT.jar app.jar

# Kör JAR-filen
ENTRYPOINT ["java","-jar","/app.jar"]
