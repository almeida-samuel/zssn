FROM node:17.6.0-alpine

RUN mkdir /zssn
WORKDIR /zssn

COPY ./ ./

RUN yarn install
RUN yarn run build

EXPOSE 3000

CMD yarn run start