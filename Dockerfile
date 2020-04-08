FROM ubuntu:19.04

RUN apt update \
    && apt install -y --no-install-recommends \
        iputils-ping \
        net-tools \
        dnsutils \
        ca-certificates \
        build-essential \
        curl \
        squid=4.4-1ubuntu2.3 \
    && apt -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -k -L https://getenvoy.io/cli | bash -s -- -b /usr/local/bin

CMD ["/bin/bash"]
