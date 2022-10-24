FROM node:alpine

# Create and set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# Copy source files
COPY . /usr/src

# Install dependencies
RUN npm install

# Indicate that the 3000 port will be exposed
EXPOSE 3000

# Start app
RUN npm run build
CMD npm run start