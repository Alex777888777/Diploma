FROM node:21-alpine3.18
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --silent
COPY . .
EXPOSE 5000
ENTRYPOINT ["/bin/sh", "-c", "npm run data:import && npm start"]
#CMD ["npm","start"]
