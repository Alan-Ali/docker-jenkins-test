# Base image
FROM node:14

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Start the Node.js application
CMD ["npm", "start"]