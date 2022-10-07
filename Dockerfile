FROM node:lts-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm i

RUN apk add ffmpeg

EXPOSE 1935 8000 8443

CMD ["node","server.js"]
