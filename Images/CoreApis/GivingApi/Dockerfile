FROM node:12-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/GivingApi.git .

COPY sample.env .env

COPY entrypoint.sh /

RUN git submodule init && git submodule update

RUN npm install

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8084