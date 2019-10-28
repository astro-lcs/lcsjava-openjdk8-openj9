FROM adoptopenjdk/openjdk8-openj9:latest

RUN apt-get update -y
RUN apt-get install  net-tools tzdata -y

#Time
ENV TW=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TW /etc/localtime && echo $TW > /etc/timezone
