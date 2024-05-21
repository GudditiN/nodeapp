# Use the official Node.js image as the base image
FROM node:20

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install --ignore-scripts 

# Copy the rest of the application code
COPY . .

# Set environment variables
ENV PORT=8081

# Expose the port the app runs on
EXPOSE 8081

# Start the application
CMD ["npx", "expo", "start"]
