# Build stage
FROM node:24-alpine AS build

WORKDIR /app

# Copy package.json and package-lock.json
COPY server/package*.json ./

# Install app dependencies
RUN npm ci

# Bundle app source
COPY server .

ENV NODE_ENV=production

# Build the TypeScript files
RUN npm run build


# Production stage
FROM node:24-alpine AS production

WORKDIR /app

COPY server/package*.json .

# Copy openapi schema
RUN mkdir /app/openapi/
COPY openapi/schema.json /app/openapi/

COPY server/storage /app/

RUN npm ci --omit=dev

# Copy builded files
COPY --from=build /app/dist ./dist

ENV NODE_ENV=production

# Expose port server port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start:prod"]
