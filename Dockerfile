FROM node:latest

MAINTAINER oyydoibh@gmail.com

# install supervisor, git

RUN apt-get update && apt-get install -y supervisor git
RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# isntall oyyd-blog

COPY blog.oyyd.net.crt /etc/ssl/certs/blog.oyyd.net.crt
COPY blog.oyyd.net.key /etc/ssl/private/blog.oyyd.net.key
COPY starfield.pem /etc/ssl/certs/starfield.pem

RUN mkdir -p /home/oyyd

RUN git clone https://github.com/oyyd/oyyd-blog.git /home/oyyd/oyyd-blog

WORKDIR /home/oyyd/oyyd-blog

RUN npm install --only=production

# install shadowsocks-js

RUN npm install -g shadowsocks-js
RUN mkdir -p /etc/ssjs/

COPY ssjs.config.json /etc/ssjs/ssjs.config.json

EXPOSE 80 443 8083

CMD ["/usr/bin/supervisord"]
