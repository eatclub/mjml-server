FROM node:22.23.4-alpine

WORKDIR /app

COPY ./package.json ./package-lock.json /app/

RUN npm install

EXPOSE 15500

COPY . /app/

ENTRYPOINT ["node", "./index.js"]
