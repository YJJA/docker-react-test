FROM node:8.9-alpine

ENV PORT 3000
ENV NODE_ENV production
ENV NPM_REGISTRY https://registry.npm.taobao.org

WORKDIR /usr/src/app

COPY . .

RUN set -ex \
    && npm install --registry=$NPM_REGISTRY \
    && npm run build \
    && rm -rf node_modules \
    && npm install --production --silent --registry=$NPM_REGISTRY \
    && mv node_modules ../ \
    && rm -rf src public

EXPOSE 3000

CMD ["npm", "run", "server"]