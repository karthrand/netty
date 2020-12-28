FROM centos:7.8.2003
ADD udpserver.jar /home/udpserver.jar
ADD netty-all-4.1.25.Final.jar /home/netty-all-4.1.25.Final.jar
RUN yum -y install java-1.8.0-openjdk* net-tools vim nc
RUN mv /home/netty-all-4.1.25.Final.jar /usr/lib/jvm/jre/lib/ext/
EXPOSE 9010/udp
ENTRYPOINT java -jar /home/udpserver.jar