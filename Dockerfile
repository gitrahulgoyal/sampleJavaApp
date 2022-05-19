FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENV classpath=com.goyal.demoapp.App
ENV classargs=
ENTRYPOINT ["java","-cp","app.jar", ${classpath}, ${classargs}]