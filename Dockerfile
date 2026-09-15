FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
ENV AUDASYS_HOST=0.0.0.0 AUDASYS_PORT=8787 AUDASYS_DATA_DIR=/app/data
EXPOSE 8787
CMD ["node", "server/index.js"]
