FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN cat package.json   # просто посмотрим, что внутри
RUN npm install --verbose   # добавим verbose, чтобы увидеть детали

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
