FROM node:16-alpine

# RUN apk add --no-cache python2 g++ make

WORKDIR /app

COPY . .
COPY .env.example .env

RUN yarn
RUN yarn build
# RUN yarn develop

# RUN yarn install --production

# CMD ["node", "./src/index.js"]
# CMD ["ash"]
CMD ["yarn", "develop"]

EXPOSE 3000