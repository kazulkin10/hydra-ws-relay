FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --production && npm cache clean --force
COPY index.js ./
ENV NODE_OPTIONS="--max-old-space-size=64"
EXPOSE 8080
CMD ["node", "index.js"]
