FROM node:10-alpine as build-step 
# FROM node:12.21.0 AS compile-image

RUN mkdir -p /app
WORKDIR /app

COPY package*.json ./
RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

COPY . /app

RUN npm run build --prod

EXPOSE 4201

CMD ["npm", "start"]

#FROM nginx:1.17.1-alpine

#COPY --from=build-step /app/docs /usr/share/nginx/html
