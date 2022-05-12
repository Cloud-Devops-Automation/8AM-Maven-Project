FROM tomcat:8.0
MAINTAINER CloudGen support@cloudgen.in
COPY ./Cloud-DevOps.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/startup.sh", "run"]

