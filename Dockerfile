FROM node:14

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install

COPY [".", "/usr/src/"]


EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]
# CMD Node index.js ---> se puede ver escrito asi pero 
# se recomienda la de arriba