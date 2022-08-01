# Declare the base image
FROM node:16-alpine
# Build step
# 1. copy package.json and package-lock.json to /app dir
RUN mkdir /app
# 2. Change working directory to newly created app dir
WORKDIR ./app/
# 3. Run the app
CMD ["npm", "run", "dev"]