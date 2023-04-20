FROM node:16-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/LessonsApp.git .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm set unsafe-perm true

RUN git config --local core.fileMode false

RUN npm install --legacy-peer-deps

CMD npm run dev

EXPOSE 3501