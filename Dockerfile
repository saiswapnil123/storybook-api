# Base Image
FROM node:22-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better layer caching)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Expose API Port
EXPOSE 3000

# Start application
CMD ["npm", "run", "dev"]