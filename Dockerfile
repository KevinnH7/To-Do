# Imports a base Docker image to use
# in this case we are using the node:18-alpine image
# which is a lightweight version of node
# https://hub.docker.com/_/node
FROM node:18-alpine

WORKDIR /app

COPY package-lock.json package-lock.json
COPY package.json package.json
RUN npm install

COPY . .
RUN npm run build

CMD ["npm", "run", "start"]
