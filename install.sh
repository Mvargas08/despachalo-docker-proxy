docker rm -fv despachalo-proxy-docker
docker build -t despachalo-proxy-docker .
docker run -d --privileged=true --name despachalo-ssl-proxy -v /etc/letsencrypt:/etc/letsencrypt --link despachalo-rest-api-8084 -p 82:80 -p 443:443 despachalo-proxy-docker
# -e CERTS=despachalo.xpectrumtech.com -e EMAIL=despachalo@xpectrumtech.com