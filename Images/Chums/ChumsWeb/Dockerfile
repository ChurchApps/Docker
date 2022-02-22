FROM node:12-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/ChumsWeb.git .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm set unsafe-perm true

RUN git config --local core.fileMode false

RUN npm install

CMD npm start

EXPOSE 3100