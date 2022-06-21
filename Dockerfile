FROM registry.cn-hangzhou.aliyuncs.com/ranmo/centos7-jdk8:1.0
RUN mkdir -p deploy
COPY ./target/*.jar deploy/app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "deploy/app.jar"]
