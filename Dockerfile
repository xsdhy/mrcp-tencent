FROM centos:7

WORKDIR /app
COPY unimrcp.tar.gz /app/
COPY entrypoint.sh /app/

RUN yum update -y && tar -zxf unimrcp.tar.gz && yum clean all && chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]