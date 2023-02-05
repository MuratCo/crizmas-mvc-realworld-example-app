# Use node base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy the package.json file to the image
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set the environment variables
ENV PORT 3000

# Expose the application port
EXPOSE 3000

# Run the application
CMD [ "npm", "start" ]