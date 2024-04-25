FROM node
ENV NODE_ENV production
ENV HOST 0.0.0.0
WORKDIR /app
COPY . /app
RUN npm install --production=false && npm run build && rm -rf node_modules && npm install --production
EXPOSE 3000/tcp
ENTRYPOINT [ "npm", "start" ]
