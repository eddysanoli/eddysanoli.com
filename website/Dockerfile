FROM node:16.18-alpine

# Create and set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# Copy source files
COPY . . 

# Install dependencies
RUN npm install

# Indicate that the 3000 port will be exposed
EXPOSE 3000

# Build and start app
RUN npm run build
ENTRYPOINT [ "npm", "run", "start" ]