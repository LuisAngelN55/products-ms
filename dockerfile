FROM node:22-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . .

RUN yarn prisma generate

EXPOSE 3001