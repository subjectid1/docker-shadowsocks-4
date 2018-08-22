FROM python:2.7.15-alpine3.8
RUN  pip install shadowsocks
EXPOSE 1080 8388
COPY shadowsocks.json /etc/shadowsocks.json
CMD ["ssserver","-c","/etc/shadowsocks.json"]
