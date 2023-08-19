FROM node as build-stage

WORKDIR /app
ADD . .

RUN yarn install
RUN yarn run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY  ./nginx/default.conf /etc/nginx/conf.d/default.conf

COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]