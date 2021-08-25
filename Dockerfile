FROM node

RUN mkdir /usr/scr/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_module/.bin:$PATH

COPY package*.json /usr/scr/app

RUN npm install

COPY . /usr/scr/app

EXPOSE 4000
CMD [ "npm", "start"]
