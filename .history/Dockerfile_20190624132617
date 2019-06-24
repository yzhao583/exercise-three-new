FROM node:10

# Create app directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app when the container launches
CMD [ "npm", "start" ]