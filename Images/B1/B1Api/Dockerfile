FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/B1Api .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm install

RUN npm run initdb

CMD npm run dev

EXPOSE 8300