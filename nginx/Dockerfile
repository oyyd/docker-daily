FROM basic

MAINTAINER oyydoibh@gmail.com

RUN mkdir -p /usr/local/etc/nginx

COPY credential/blog.oyyd.net.crt /etc/ssl/certs/blog.oyyd.net.crt
COPY credential/blog.oyyd.net.key /etc/ssl/private/blog.oyyd.net.key
COPY credential/starfield.pem /etc/ssl/certs/starfield.pem
COPY nginx.conf /usr/local/etc/nginx/blog.conf

EXPOSE 80 443

CMD nginx -c /usr/local/etc/nginx/blog.conf
