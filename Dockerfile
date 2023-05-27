# Dockerfile
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install dependencies
RUN npm update

# Copy the entire project
COPY . .

# Build the React application
RUN npm run build

# Expose the desired port
EXPOSE 8484

# Start the server
RUN npm run start