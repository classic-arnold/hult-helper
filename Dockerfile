# syntax=docker/dockerfile:1

FROM node:12.18.1
ENV DEBUG=hult-helper:*

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD [ "npm", "start" ]
