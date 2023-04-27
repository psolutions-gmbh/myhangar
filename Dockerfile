FROM node:18.16.0
ENV NODE_ENV=development
WORKDIR /usr/src/myhangar
RUN apt-get update && apt-get install -y --no-install-recommends\
    yamllint=1.26.0-2 \
    && rm -rf /var/lib/apt/lists/*
USER node
