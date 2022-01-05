#STEP 1 BUILD VUE PROJECT
FROM node:16.13.1-alpine AS build
WORKDIR /app
COPY package.json ./
RUN yarn install
COPY . .
RUN yarn build

#STEP 2 CREATE NGINX SERVER
FROM nginx:1.21.3-alpine AS prod-stage
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]