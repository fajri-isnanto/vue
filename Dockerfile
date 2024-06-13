# Use the official Node.js 20 image from the Docker Hub
FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "app.js"]