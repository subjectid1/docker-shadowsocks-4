FROM debian:stretch
RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie main">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie-updates main">>/etc/apt/sources.list && echo "deb http://security.debian.org jessie/updates main">>/etc/apt/sources.list
RUN apt-get update && apt-get -y install python-pip && pip install shadowsocks
EXPOSE 1080 8388
COPY shadowsocks.json /etc/shadowsocks.json
CMD ["ssserver","-c","/etc/shadowsocks.json"]
