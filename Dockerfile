# Use the official Node.js image from Docker Hub
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the Node.js app will run on
#EXPOSE 3000

# Command to start the Node.js application
CMD ["npm","run","start"]
