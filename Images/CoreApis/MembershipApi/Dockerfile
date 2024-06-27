FROM node:20-alpine

RUN apk update && \
  apk add git

WORKDIR /app

RUN git clone https://github.com/ChurchApps/MembershipApi.git .

COPY sample.env .env

COPY entrypoint.sh /

RUN npm install

RUN ["chmod", "+x", "/entrypoint.sh"] 

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8083