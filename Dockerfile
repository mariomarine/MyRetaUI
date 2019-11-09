FROM node:10
# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /app
# Installing dependencies
COPY package*.json ./
RUN npm install
# Copying source files
ADD . .
# Building app
RUN npm run build
# Running the app
CMD [ "npm", "run", "dev" ]
