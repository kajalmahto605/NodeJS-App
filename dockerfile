FROM node:latest

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 4000

# Change the entrypoint to sendSuccessEmail.js
CMD ["node", "sendSuccessEmail.js"]
