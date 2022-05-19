FROM node:alpine

WORKDIR /front-end-app

ENV PATH /frontend-end-app/node_modules/.bin:$PATH

COPY package.json ./

COPY yarn.lock ./

RUN yarn install

COPY . ./

CMD ["yarn", "start"]