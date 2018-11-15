FROM node:8.9-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production --silent --registry=https://registry.npm.taobao.org && mv node_modules ../
COPY . .
EXPOSE 3000
CMD ["npm", "run", "server"]