<<<<<<< HEAD
FROM node:10.16-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["npm","start"]
=======
FROM node:21-alpine3.18


WORKDIR /usr/src/app

COPY package*.json ./



RUN npm install --silent


COPY . .

EXPOSE 3000

CMD ["npm","start"]
>>>>>>> bf3cac23f8d7fbcf67fd26b60cc3b50878fd3932
