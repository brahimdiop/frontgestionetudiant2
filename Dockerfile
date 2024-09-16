### STAGE 1: Définir le répertoire de travail ###
FROM node:14.17.0-alpine as build
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

### STAGE 2: ###
FROM nginx:1.13.12-alpine
COPY nginx.conf /usr/share/nginx/html
COPY ./nginx.conf /usr/src/app/dist/FormSubmit /etc/nginx/conf.d/default.template
EXPOSE 80



