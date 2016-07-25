FROM debian:latest
RUN apt-get update && apt-get -y install python-pip && pip install shadowsocks
EXPOSE 1080 8388
COPY shadowsocks.json /etc/shadowsocks.json
CMD ["ssserver","-c","/etc/shadowsocks.json"]
