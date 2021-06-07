FROM node:12-alpine

RUN apk update && \
    apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/StreamingLiveApp .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm set unsafe-perm true

RUN chmod +x .husky/pre-commit

RUN git config --local core.fileMode false

RUN npm install

CMD npm start

EXPOSE 3201