FROM node:20-alpine as build-stage
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . /app
RUN npm run build

# Publicação
FROM nginx:alpine as publish-stage
COPY --from=build-stage /app/dist/angular-app/browser/ /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]