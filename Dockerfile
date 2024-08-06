FROM node:18-alpine
RUN npm install -g npm@latest
WORKDIR app
COPY package*.json ./
COPY . .
RUN npm install
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
