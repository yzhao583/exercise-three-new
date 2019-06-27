FROM node:10

#Avoid process in container run as root
RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

# Create app directory
RUN mkdir -p /app
RUN chown appuser:appuser /app

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

#Switch user
USER appuser

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
# Install dependencies
RUN npm install

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run app when the container launches
CMD [ "npm", "start" ]