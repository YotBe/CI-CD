FROM node:18-alpine
WORKDIR /app

# 1. Copy package.json and/or package-lock.json
COPY package*.json ./

# 2. Clear npm cache and update npm
RUN npm cache clean --force
RUN npm install -g npm@latest

# 3. Install dependencies
RUN npm install

# 4. Copy the rest of your source code
COPY . .

CMD ["npm", "start"]