FROM node:15-buster-slim

# Set work directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Heroku assigns the port value
ENV PORT=3000
EXPOSE $PORT

CMD ["node", "index.js"]
