# Base docker image
FROM node:alpine

# Working dir in image's FS
WORKDIR /usr/app

# Copy package.json to work dir
COPY package*.json ./
RUN npm install

# Copy project files to work dir
# Separate this from package.json for using cache in building
COPY ./ ./

CMD [ "npm", "start" ]