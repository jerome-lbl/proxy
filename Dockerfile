FROM debian 

RUN apt-get update && apt-get install -y \
  dnsutils \
  nmap \
  ssh

WORKDIR /usr/local/bin

COPY ./getip.sh .

RUN chmod +x getip.sh

EXPOSE 3128

ENTRYPOINT ["/usr/local/bin/getip.sh"]
CMD ["bash"]
