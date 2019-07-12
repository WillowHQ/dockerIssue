FROM node:8.9.4

COPY . .

RUN rm -rf node_modules
RUN rm -rf .next
RUN rm yarn.lock

RUN yarn install

RUN yarn run build

EXPOSE 3000

CMD [ "yarn", "run", "start" ]