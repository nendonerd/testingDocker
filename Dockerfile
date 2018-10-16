# FROM node:10

# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# # where our app lives in the container, # cd /usr/src/app

# COPY package*.json /usr/src/app/
# # move package.json & package-lock.json to container

# RUN npm install

# COPY . /usr/src/app/

# EXPOSE 3000

# CMD ["npm", "start"]



FROM node:10

# ENV http_proxy http://localhost:8100/
# ENV https_proxy http://localhost:8100/

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm config set proxy http://localhost:8100/
# RUN npm config set https-proxy http://localhost:8100/

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]