
FROM node:8

Run mkdir express_app

WORKDIR /express_app

COPY package.json /express_app

RUN npm install

COPY . /express_app

CMD node app.js

EXPOSE 3000



