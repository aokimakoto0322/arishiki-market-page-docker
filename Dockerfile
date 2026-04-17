# nodeイメージから作成
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json package-lock.json
COPY ./ArishikiWebPage/arishiki-market-web-app/package*.json ./

RUN ["npm", "install"]

# Expose port
EXPOSE 3000