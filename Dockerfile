FROM ubuntu:14.04
 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

RUN apt-get install -y python-pip python-yaml git socat
RUN pip install docker-py
RUN pip install git+git://github.com/signalfuse/maestro-ng

ADD bin/socat-maestro /
ENTRYPOINT ["/socat-maestro"]
CMD ["-h"]
