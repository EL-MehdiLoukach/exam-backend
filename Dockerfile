#This is the latest node image
FROM node:latest

ENV NODE_ENV=production

WORKDIR /application

COPY ./package.json ./

RUN npm i

COPY . .

EXPOSE 5000

CMD ["node", "server.js"]


