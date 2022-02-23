FROM node:12-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/LiveChurchSolutions/B1Api.git .

COPY sample.env .env

COPY entrypoint.sh /

RUN git submodule init && git submodule update

RUN npm install

RUN ["chmod", "+x", "/entrypoint.sh"] 

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8300