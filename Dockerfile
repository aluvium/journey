FROM node:19
COPY . /app
WORKDIR /app
RUN set -eux; \
    npm install reveal.js /app;
EXPOSE 8002
CMD pwd && ls -R1
#CMD  npm start -- --port 8002 --host origin
