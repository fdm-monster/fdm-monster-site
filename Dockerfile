FROM node:lts-alpine as build
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
RUN yarn run build

FROM node:lts-alpine as final
# install simple http server for serving static content
RUN yarn global add http-server
WORKDIR /app
COPY --from=build /app/dist ./dist
EXPOSE 8080
CMD [ "http-server", "dist" ]