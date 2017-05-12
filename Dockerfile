FROM mhart/alpine-node-auto:7.10.0

# Bundle app source
RUN apk add --no-cache imagemagick \
 && mkdir -p ~/src/app

COPY . ~/src/app

WORKDIR ~/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
