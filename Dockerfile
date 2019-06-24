FROM node:10

# Create app directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN npm install --silent

# Make port 90 available to the world outside this container
EXPOSE 90

# Run app when the container launches
CMD [ "npm", "start" ]