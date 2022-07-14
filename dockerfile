FROM  maven:3.6.3-openjdk-8 
WORKDIR /
EXPOSE 9125
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
CMD sleep 150 && mvn sonar:sonar 
mvn sonar:sonar \
  -Dsonar.projectKey=docker \
  -Dsonar.host.url=http://10.11.0.175:9000 \
  -Dsonar.login=419e0fd7356720bab364450ff462913c7a99ea5c
