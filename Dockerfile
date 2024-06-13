# Use Node.js 20 as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Build the Vue.js application
RUN npm run build

# Install `http-server` to serve the built application
RUN npm install -g http-server

# Expose port 8080 to access the application
EXPOSE 8080

# Command to serve the application
CMD ["http-server", "dist"]