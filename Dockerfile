FROM node:19
COPY . /app
WORKDIR /app
RUN set -eux; \
    npm install; \
    npm run build --if-present; \
    npm test ;
CMD npm start;
