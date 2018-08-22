docker build -t shadowsocks:latest .
docker run -d --name=shadowsocks -p 8388:8388 shadowsocks:latest
