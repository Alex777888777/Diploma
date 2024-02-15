FROM node:21-alpine3.18


WORKDIR /usr/src/app

COPY package*.json ./



RUN npm install --silent


COPY . .

EXPOSE 3000
ENTRYPOINT ["/bin/bash", "-c", "npm run data:import && npm start"]
#CMD ["npm","start"]
