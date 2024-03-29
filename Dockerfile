FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY src ./src

RUN npm run build && npm link

ENTRYPOINT [ "mit10s" ]
