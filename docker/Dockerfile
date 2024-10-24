FROM node:20.12-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY server/package*.json ./

# Install app dependencies
RUN npm ci

# Bundle app source
COPY server .

# Build the TypeScript files
RUN npm run build

# Copy openapi schema
RUN mkdir /usr/src/openapi/
COPY openapi/schema.json /usr/src/openapi/

# Expose port server port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start:prod"]
