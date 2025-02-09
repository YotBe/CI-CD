FROM node:18-alpine
WORKDIR /app

# 1. Copy package.json and/or package-lock.json
COPY package*.json ./

# 2. Install dependencies
RUN npm install
RUN npm cache clean --force


# 3. Copy the rest of your source code
COPY . .

CMD ["npm", "start"]