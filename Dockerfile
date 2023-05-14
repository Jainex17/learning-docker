# Use the official Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose port 3000 for the Express application
EXPOSE 3000

# Set the entry point to run the Node.js application
CMD ["node", "app.js"]