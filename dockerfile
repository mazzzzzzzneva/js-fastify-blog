FROM node:18-alpine

# Устанавливаем инструменты для сборки нативных модулей
RUN apk add --no-cache python3 make g++

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
