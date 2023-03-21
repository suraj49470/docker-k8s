FROM node:14

EXPOSE 8080

WORKDIR /nodeapp

COPY "package.json" .

RUN npm install

COPY index.js .
 
CMD ["node" , "index.js"]
