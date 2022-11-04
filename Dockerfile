FROM node:19
COPY . /app
WORKDIR /app
RUN set -eux; \
    npm init -y; \
    npm install reveal.js;
EXPOSE 8002
CMD  npm start -- --port 8002 --host origin