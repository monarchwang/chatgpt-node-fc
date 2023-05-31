# Enforce the platform to AMD64 to prevent unsupported ARM64 images that generated on Macbook M1 chips
FROM --platform=linux/amd64 node:16.20.0
ARG OPENAI_API_KEY

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

ENV NODE_ENV=production
ENV OPENAI_API_KEY=${OPENAI_API_KEY}

#RUN npm i -g cnpm --unsafe-perm=true --allow-root --registry=https://registry.npmmirror.com

RUN npm install --production --registry=https://registry.npmmirror.com

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY dist/  ./dist/

EXPOSE 3002

ENTRYPOINT [ "npm", "run-script", "prod" ]
