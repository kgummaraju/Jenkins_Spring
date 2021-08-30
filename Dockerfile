FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/spring-mvc-maven-0.1.jar jenkinsspring.jar
EXPOSE 8085
ENTRYPOINT exec java $JAVA_OPTS -jar jenkinsspring.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar jenkinsspring.jar
