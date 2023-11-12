# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install --legacy-peer-deps

# Copy the application code to the working directory
COPY . .

# Expose port 8080 to the outside world
EXPOSE 8008

# Define the command to run the application
CMD [ "npm", "start" ]