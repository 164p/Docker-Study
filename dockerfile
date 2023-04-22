FROM node:16
WORKDIR /app
LABEL VERSION=0.1 
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
ENV MONGO_HOST mongo
ENV MONGO_PORT 27017
ENV MONGO_DBNAME mydb
CMD [ "npm", "start" ]