#pull a base image which gives all required tools and libraries
FROM eclipse-temurin:17-jdk-alpine

#create a folder where app code will stored
WORKDIR /app

#Copy the source code from HOST machine to container
COPY src/Main.java /app/Main.java

#Compile the application code
RUN javac Main.java

#Run the application
CMD ["java", "Main"]
