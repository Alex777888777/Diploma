FROM node:21-alpine3.18
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --silent
COPY . .
RUN npm run data:import
EXPOSE 5000
CMD ["npm","start"]
