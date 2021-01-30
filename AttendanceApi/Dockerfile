FROM node:12-buster-slim

RUN apt-get update && \
    apt-get install -y git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/AttendanceApi .

COPY sample.env .env

RUN git submodule init && git submodule update

RUN npm install

CMD npm run initdb && npm run dev

EXPOSE 8085