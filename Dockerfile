FROM node:20-alpine
WORKDIR /app
COPY edubridge/package*.json ./
RUN npm ci --omit=dev
COPY edubridge ./
RUN mkdir -p data uploads
ENV NODE_ENV=production
ENV PORT=3000
EXPOSE 3000
CMD ["node", "server.js"]

