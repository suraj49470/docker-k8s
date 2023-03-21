FROM node

WORKDIR /volapp

COPY package.json .

RUN npm install

ENV PORT 80

EXPOSE $PORT

COPY . .

CMD ["npm","start"]