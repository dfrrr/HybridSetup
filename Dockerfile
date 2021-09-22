FROM centos
RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN wget http://mirror.wanxp.id/apache/tomcat/tomcat-8/v8.5.6/bin/apache-tomcat-8.5.6.tar.gz
RUN tar xvfz apache-tomcat*.tar.gz

RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]



