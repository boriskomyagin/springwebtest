FROM alpine:latest
ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"
RUN apk add openjdk11
ENV PATH=$PATH:${JAVA_HOME}/bin
ARG JAR_FILE=target/springweb-0.0.1-SNAPSHOT.jar
VOLUME /mnt/stuff/docker
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]