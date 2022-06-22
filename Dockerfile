FROM registry.cn-hangzhou.aliyuncs.com/ranmo/centos7-jdk8:1.0
RUN mkdir -p /root/deploy/
ADD ./run.sh /root/deploy/
COPY ./target/*.jar /root/deploy/app.jar

EXPOSE 8080
