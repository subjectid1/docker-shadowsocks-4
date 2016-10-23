# docker-shadowsocks
* build:
  docker build -t shadowsocks:latest .
* run:
  docker run -d –name=shadowsocks -p 8388:8388 shadowsocks:latest
* used:
  工具下载：https://github.com/shadowsocks/shadowsocks-windows/releases

* user：
  server_port：8388
  password：dandan.io1992
  method:rc4-md5
