FROM:centos7
RUN yum update -y
RUN yum install -y httpd
RUN echo "this is docker website" > index.html
RUN systemctl start httpd.service
RUN systemctl enabled httpd.service
EXPOSE:80