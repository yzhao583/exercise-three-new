FROM node:10

#Avoid process in container run as root
RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

# Create app directory
RUN mkdir /app
RUN chown 999:999 /app

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN npm install

# Make port 90 available to the world outside this container
EXPOSE 90

# Run app when the container launches
CMD [ "npm", "start" ]