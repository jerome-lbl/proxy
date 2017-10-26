FROM debian 

RUN apt-get update && apt-get install -y dnsutils nmap ssh

WORKDIR /usr/local/bin

ADD ./getip.sh .

EXPOSE 3128

RUN chmod +x getip.sh

RUN getip.sh
