# Use official JDK as the base image
FROM openjdk:11

#Create Directory app
RUN mkdir /app

# Copy the contents od target directory into app
COPY target/ /app

#Set working director as app
WORKDIR /app

#Run the JAR file
CMD java -jar eStoreBackend-0.0.1-SNAPSHOT.jar --spring.confif.name=application.properties