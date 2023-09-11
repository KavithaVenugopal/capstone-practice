# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Build the React app (customize this based on your app's build command)
RUN npm run build

# Expose the port that the React app will run on
EXPOSE 3000

# Define the command to start the React app
CMD ["npm", "start"]

