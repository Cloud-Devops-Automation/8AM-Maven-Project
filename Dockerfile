FROM tomcat:8.0
MAINTAINER CloudGen support@cloudgen.in
COPY /root/.jenkins/workspace/War-Project-Build-1/target/Cloud-DevOps-1.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/startup.sh", "run"]

