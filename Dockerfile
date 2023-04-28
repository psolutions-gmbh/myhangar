FROM node:18.16.0
ENV NODE_ENV=development
WORKDIR /usr/src/myhangar
COPY package.json package-lock.json ./
RUN npm install
USER node
HEALTHCHECK CMD curl -f http://localhost:5173 || exit 1
