FROM node

# Prepare app directory
RUN mkdir -p /app
ADD . /app

# Install dependencies
WORKDIR /app
RUN npm install

# Build the app
RUN npm run build

# Expose the application port (adjust if necessary)
EXPOSE 8080
