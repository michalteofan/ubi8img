FROM: docker.io/redhat/ubi8:latest
RUN: yum -y install --disableplugin=subscription-manager telnet net-tools

ENTRYPOINT ["tail", "-f", "/dev/null"]
