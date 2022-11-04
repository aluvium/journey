FROM node:19
COPY . /app
WORKDIR /app
RUN set -eux; \
    npm ci; \
    npm run build; \
    npm test ;
CMD npm start -- --port 8008 --host origin
