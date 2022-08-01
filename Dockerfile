# Declare the base image
FROM node:16-alpine
# Build step
# 1. copy package.json and package-lock.json to /app dir
RUN mkdir /app
COPY package*.json /app
# 2. Change working directory to newly created app dir
WORKDIR /app
# 3 . Install dependencies
RUN npm i
# 4. Copy the source code to /app dir
COPY . .
# 5. Run the app
CMD ["npm", "run", "dev"]