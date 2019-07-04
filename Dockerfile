FROM node
MAINTAINER yukimir

WORKDIR /root
COPY . serve
WORKDIR serve
RUN npm install

ENTRYPOINT ["node", "/root/serve/index.js"]
