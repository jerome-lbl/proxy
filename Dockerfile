FROM sameersbn/squid

RUN apt-get update && apt-get install -y dnsutils ssh nmap

WORKDIR /usr/local/bin

COPY ./getip.sh .



