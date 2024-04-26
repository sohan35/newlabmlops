# Use an official lightweight Node.js image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Run the app when the container launches
CMD ["node", "-e", "require('http').createServer((req, res) => res.end(require('fs').readFileSync(require('path').join(__dirname, 'index.html')))).listen(80);"]
