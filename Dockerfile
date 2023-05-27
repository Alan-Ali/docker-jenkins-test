# Dockerfile
FROM node:16-alpine

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
RUN yarn build


# Start the server
CMD ["npm","deploy"]