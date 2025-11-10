FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q && \
    apt-get install -q -y build-essential valgrind && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/binaries/
ENTRYPOINT [ "valgrind" ]
CMD [ "--version" ]
