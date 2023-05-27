# Base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Expose the desired port
EXPOSE 8484

# Start the Node.js application
CMD ["npm", "start"]