FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y build-essential valgrind && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/binaries/
ENTRYPOINT [ "valgrind" ]
CMD [ "--version" ]
