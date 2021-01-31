FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/ChumsTests .

COPY cypress.env.json.template cypress.env.json

RUN git submodule init && git submodule update

RUN npm install

CMD npm run test

EXPOSE 3000