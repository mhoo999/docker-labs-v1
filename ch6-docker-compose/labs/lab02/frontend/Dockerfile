FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build  # 빌드 추가
EXPOSE 5173
CMD ["npm", "start"]  # production 모드