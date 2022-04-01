# pull official base image
FROM node:14

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
RUN npm install --silent

# add app
COPY . ./

# export port
EXPOSE 3000

# start app
CMD ["npm", "start"]