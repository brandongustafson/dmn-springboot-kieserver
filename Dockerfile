FROM registry.access.redhat.com/ubi8/openjdk-11:latest

RUN mkdir -p /opt/spring-service && chmod -R g+w /opt/spring-service && chgrp -R 0 /opt/spring-service
COPY kie-server/target/traffic-violation-service-1.0.0-SNAPSHOT.jar /opt/spring-service/
COPY pam/target/traffic-violation-kjar-1.0.0-SNAPSHOT.jar /opt/spring-service/
COPY container-settings.xml /opt/spring-service/settings.xml
COPY MAVEN /home/jboss/.m2/repository
EXPOSE 8090
WORKDIR /opt/spring-service/
CMD ["sh","-c", "java ${JAVA_OPTIONS} -jar -Dkie.maven.settings.custom=/opt/spring-service/settings.xml /opt/spring-service/traffic-violation-service-1.0.0-SNAPSHOT.jar"]
