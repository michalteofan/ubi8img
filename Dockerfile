FROM docker.io/redhat/ubi8:latest
RUN yum install --disableplugin=subscription-manager -y net-tools wget curl gzip unzip tar bind-utils iproute iputils yum-utils
RUN echo "Dodaj swoj skrypt, ktory cos instaluje tutaj"

ADD startup.sh /tmp/startup.sh
RUN chmod 777 /tmp/startup.sh

ENTRYPOINT ["/tmp/startup.sh"]
