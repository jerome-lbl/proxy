# proxy
Un proxy différencié

## Lancement
docker run -d --name mon-proxy -p 3128:3128 -v /path/to/squid.conf:/etc/squid3/squid.conf -v /path/to/cache:/var/spool/squid3/cache -v /path/to/.ssh:/root/.ssh jh91/proxy-dev
