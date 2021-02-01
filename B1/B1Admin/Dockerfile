FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/B1Admin .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm install

CMD npm start

EXPOSE 3301