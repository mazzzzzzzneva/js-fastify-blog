FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN echo "=== Files in /app after COPY ===" && ls -la

RUN echo "=== Content of package.json ===" && cat package.json

RUN npm install --verbose

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
