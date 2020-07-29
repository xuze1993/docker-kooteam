FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y lsof \
    && curl -L -o kooteam.tar.gz 'https://www.kooteam.com/home/download.do?app=kooteam&type=install' \
    && tar -xvf kooteam.tar.gz 

WORKDIR /
EXPOSE 7053

CMD ["java", "-jar", "./kooteam.jar", "7053"]
