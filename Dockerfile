FROM centos:7

WORKDIR /app
COPY ./unimrcp.tar.gz .

RUN yum update -y && \
    cd /app && \
    tar -zxf unimrcp.tar.gz


ENTRYPOINT ["/app/unimrcp/admin/change.sh","/app/unimrcp/admin/start_server.sh"]



CMD ["tail", "-f", "/dev/null"]