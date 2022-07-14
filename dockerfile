FROM  maven:3.6.3-openjdk-8 
WORKDIR /
EXPOSE 9125
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
CMD sleep 150 && mvn sonar:sonar 
-Dsonar.host.url=http://10.11.0.175:9125  
-Dsonar.language=java -Dsonar.login=admin 
-Dsonar.password=admin -Dsonar. projectKey=sonarbackend 
