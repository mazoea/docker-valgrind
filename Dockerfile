# 26.04: valgrind 3.26. The 3.22 of 24.04 dies on arm64 with SIGILL on `ldapr` (ARMv8.3 RCpc),
# which GCC emits for the te arm64 libs (libtesseract4-maz).
FROM ubuntu:26.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q && \
    apt-get install -q -y --no-install-recommends build-essential valgrind && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/binaries/
ENTRYPOINT [ "valgrind" ]
CMD [ "--version" ]
