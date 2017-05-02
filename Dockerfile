# Base image
FROM node:7.9-alpine

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm install

EXPOSE 9000

CMD ["npm", "start"]

# docker build -t testing-trav-dock-aws .