#!/bin/bash
set -euo pipefail

git clone https://github.com/docker/getting-started.git

cat > getting-started/app/Dockerfile << _EOF_
FROM node:20-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]
_EOF_

cd getting-started/app || exit
docker build -t getting-started .
docker run -dp 3000:3000 --name TODO getting-started 
docker ps -a 
