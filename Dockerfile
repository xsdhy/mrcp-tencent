FROM centos:7

WORKDIR /app
COPY ./unimrcp.tar.gz .

RUN yum update && \
    cd /app && \
    tar -zxf unimrcp.tar.gz


ENTRYPOINT ["/app/uunimrcp/admin/change.sh","/app/uunimrcp/admin/start_server.sh"]



CMD ["tail", "-f", "/dev/null"]