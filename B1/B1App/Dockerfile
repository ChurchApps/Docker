FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/B1App .

RUN git submodule init && git submodule update

RUN npm install --global expo-cli

RUN npm install

CMD npm start

EXPOSE 19002