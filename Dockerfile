FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/dsports.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip *.zip
RUN cp -rvf dsports/* .
RUN rm -rf *.zip dsports
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
