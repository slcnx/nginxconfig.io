# https://github.com/nodejs/docker-node/blob/main/README.md#how-to-use-this-image
FROM node
ENV NPM_CONFIG_LOGLEVEL info
ENV appdir=/app

WORKDIR $appdir
ADD . ./
# https://github.com/digitalocean/nginxconfig.io
# Install NPM packages
RUN npm ci

EXPOSE 8080

CMD npm run dev --host 0.0.0.0
