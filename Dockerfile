FROM ubuntu:16.10

RUN apt-get -y update && apt-get install -y git
RUN mkdir -p /opt/checker/tnt
RUN mkdir -p /opt/checker/repo
RUN git clone https://github.com/kawamanza/tnt.git /opt/checker/tnt
COPY checker.sh /opt/checker

WORKDIR /opt/checker

