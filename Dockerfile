FROM node:14-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --silent
COPY . .
EXPOSE 5000
ENTRYPOINT ["/bin/bash", "-c", "npm run data:import && npm start"]
#CMD ["npm","start"]
