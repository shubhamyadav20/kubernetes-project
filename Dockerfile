FROM centos:latest
MAINTAINER shubhamyadav.sy544@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/educational.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip educational.zip
RUN cp -rvf educational/* .
RUN rm -rf __MACOSX educational educational.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
