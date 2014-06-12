FROM ubuntu:14.04
 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

RUN apt-get install -y python-pip
RUN pip install docker-py
RUN apt-get install -y python-yaml
RUN apt-get install -y git
RUN pip install git+git://github.com/signalfuse/maestro-ng
RUN apt-get install -y socat

ADD bin/socat-maestro /
ENTRYPOINT ["/socat-maestro"]
CMD ["-h"]
