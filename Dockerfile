FROM node:latest

WORKDIR /app
COPY . .
# EXPOSE 3000
CMD node /app/app/server.js