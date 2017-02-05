# install shadowsocks-js
FROM basic

RUN npm install -g shadowsocks-js
RUN mkdir -p /etc/ssjs/

COPY credential/ssjs.config.json /etc/ssjs/ssjs.config.json

EXPOSE 8083

CMD serverssjs -d start -c /etc/ssjs/ssjs.config.json \
  && tail -f /dev/null
