FROM openjdk:8

MAINTAINER Qiliang <xiaoqlster@gmail.com>

ENV JMETER_VERSION 4.0

RUN cd / \
    && wget http://mirrors.shu.edu.cn/apache//jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz \
    && tar -zxvf apache-jmeter-$JMETER_VERSION.tgz \
    && rm -f  apache-jmeter-$JMETER_VERSION.tgz \
    && wget http://central.maven.org/maven2/com/h2database/h2/1.4.197/h2-1.4.197.jar \
    && mv h2-1.4.197.jar /apache-jmeter-$JMETER_VERSION/lib/h2-1.4.197.jar
    
    
ENV JMETER_HOME /apache-jmeter-$JMETER_VERSION/

ENV PATH $JMETER_HOME/bin:$PATH
