# base image from github and version
FROM centos:7
# the person you is creating the docker files 
LABEL maintainer="Ariane first dockerfile"
# install all packages and clean all
RUN yum -y update httpd && yum clean all
# install httpd
RUN yum -y install httpd 
# Copy the content of our website index.html into the contenair at /var/www/html/
COPY index.html /var/www/html/
# start the service httpd located on /urs/sbin/
ENTRYPOINT ["/usr/sbin/httpd"]
# run in the bacground
CMD ["-D", "FOREGROUND"]
