FROM node:16-alpine As development

WORKDIR /usr/src/school-api-gateway

COPY package*.json ./

RUN yarn && yarn cache clean --force --only=development

COPY . .

RUN yarn build