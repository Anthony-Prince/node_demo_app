FROM node:16 
# use node 16 image

WORKDIR /usr/src/app # set the working directory

COPY package.json . 
# copy package json to the directory
RUN npm install 
# install the dependencies
COPY . . 
# copy the files

EXPOSE 4000 
# open up port 4000

CMD ["node","app.js"] # cmd command