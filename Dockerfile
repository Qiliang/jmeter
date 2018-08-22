FROM openjdk:8

MAINTAINER Qiliang <xiaoqlster@gmail.com>

ENV JMETER_VERSION 4.0

RUN cd /
    && wget http://mirrors.shu.edu.cn/apache//jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz 
    && tar -zxvf apache-jmeter-$JMETER_VERSION.tgz 
    && rm -f  apache-jmeter-$JMETER_VERSION.tgz
    
ENV JMETER_HOME /apache-jmeter-$JMETER_VERSION/

ENV PATH $JMETER_HOME/bin:$PATH
