FROM node:alpine

# Create and set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# Copy source files
COPY /opt/eddysanoli_repo/website /usr/src

# Install dependencies
RUN npm install

# Indicate that the 3000 port will be exposed
EXPOSE 3000

# Start app
RUN npm run build
ENTRYPOINT [ "npm", "run", "start" ]