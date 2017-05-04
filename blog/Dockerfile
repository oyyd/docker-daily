# nginx:1.10

# node and nginx installed
FROM basic

MAINTAINER oyydoibh@gmail.com

# clone web content
RUN mkdir -p /home/oyyd
RUN git clone https://github.com/oyyd/oyyd-blog.git /home/oyyd/oyyd-blog

WORKDIR /home/oyyd/oyyd-blog

RUN npm install --only=production

EXPOSE 8001

CMD cd /home/oyyd/oyyd-blog && npm run start
