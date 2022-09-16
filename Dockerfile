FROM node:lts-alpine
WORKDIR /usr/app
COPY package*.json .
EXPOSE 3000/tcp
EXPOSE 3001/tcp
RUN npm install
COPY . .
CMD ["npm", "start"]