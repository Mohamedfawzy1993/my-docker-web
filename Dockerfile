# Updated as of Aug 16, 2017
#FROM specified which image i want to download
# Needs to be provided before any other section of code.
FROM tomcat:8.5

#Author of the Docker File
# MAINTAINER Pictolearn Note: MAINTAINER has been deprecated for LABEL,
# LABEL is a key value pair
LABEL "Maintainer"="Pictolearn"

ADD . /usr/local/fakerest

RUN apt-get update && apt-get install -y maven


RUN cd /usr/local/fakerest && mvn clean compile package


# Copy the following directory
#COPY /usr/local/fakerest/target/fakerest-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/fakerest-0.0.1-SNAPSHOT.war

RUN cp "/usr/local/fakerest/target/fakerest-0.0.1-SNAPSHOT.war" "/usr/local/tomcat/webapps/"

