FROM gradle:6.0.1-jdk8
ENV LANG=C.UTF-8
COPY build/libs/cicd-test-0.0.1-SNAPSHOT.jar /app/libs/app.jar
## COPY target/resources /app/resources
## COPY target/classes /app/classes
ENTRYPOINT ["java","-jar","/app/libs/app.jar"]
