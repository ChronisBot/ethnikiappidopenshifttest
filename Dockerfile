FROM node:8.13-alpine

WORKDIR /src/app

# Copy package.json first to check if an npm install is needed
COPY package.json /src/app
RUN npm install --production

# Bundle app source
COPY . /src/app

ENV PORT 80
EXPOSE 80 80

CMD ["npm", "start"]
