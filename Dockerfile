FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY ./src ./src

EXPOSE 3000

CMD ["npm", "start"]