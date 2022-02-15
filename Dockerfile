FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update  \
    && apt-get -y install  \
        binutils \
        curl   \
        iproute2  \
        iputils-ping \
        net-tools \
        # 
        iptables \
        nodejs \
        npm \
    && rm -rf /var/lib/apt/lists/*


CMD /bin/bash
