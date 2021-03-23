FROM gradle:6.0.1-jdk8
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV JAVA_VERSION=8u171
ENV JAVA_ALPINE_VERSION=8.171.11-r0
COPY build/libs/cicd-test-0.0.1-SNAPSHOT.jar /app/libs/app.jar
## COPY target/resources /app/resources
## COPY target/classes /app/classes
ENTRYPOINT ["java","-jar","/app/libs/app.jar"]
