FROM node:20-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/ChurchApps/B1App.git .

COPY sample.env .env

RUN npm set unsafe-perm true

RUN git config --local core.fileMode false

RUN npm install

CMD npm run dev

EXPOSE 3301