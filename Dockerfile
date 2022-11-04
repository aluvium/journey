FROM node:19
ENV HOSTNAME=origin
ENV USER=nobody
COPY . /app
WORKDIR /app
EXPOSE 8002
CMD  npm start -- --port 8002 --host origin
