FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-and-docker
ENV MONGODB_CLUSTER_ADDRESS cluster0.drpgi23.mongodb.net
ENV MONGODB_USERNAME uc
ENV MONGODB_PASSWORD F4I3yM8Xfe67dc5B

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]