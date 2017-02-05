# nginx:1.10

# node and nginx installed
FROM basic

MAINTAINER oyydoibh@gmail.com

RUN mkdir -p /usr/local/etc/nginx

COPY credential/blog.oyyd.net.crt /etc/ssl/certs/blog.oyyd.net.crt
COPY credential/blog.oyyd.net.key /etc/ssl/private/blog.oyyd.net.key
COPY credential/starfield.pem /etc/ssl/certs/starfield.pem
COPY nginx.conf /usr/local/etc/nginx/blog.conf

# clone web content
RUN mkdir -p /home/oyyd
RUN git clone https://github.com/oyyd/oyyd-blog.git /home/oyyd/oyyd-blog

WORKDIR /home/oyyd/oyyd-blog

RUN npm install --only=production

EXPOSE 80 443 8001

CMD nginx -c /usr/local/etc/nginx/blog.conf \
  && cd /home/oyyd/oyyd-blog \
  && npm run start
