#INSTALLATION OF THE OPERATING SYSTEM
FROM eclipse-temurin:17-jdk
COPY target/configserver-prod-1.jar configserver.jar
EXPOSE 8888
ENTRYPOINT ["java","-Dspring.profiles.active=prod","-jar","configserver.jar"]
