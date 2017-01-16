docker rm -fv despachalo-proxy-docker
docker build -t despachalo-proxy-docker .
docker run -d --privileged=true --name despachalo-ssl-proxy -e CERTS=despachalo.xpectrumtech.com -v /etc/letsencrypt:/etc/letsencrypt --link despachalo-rest-api-8084 -p 80:80 -p 443:443 despachalo-proxy-docker
# -e EMAIL=despachalo@xpectrumtech.com