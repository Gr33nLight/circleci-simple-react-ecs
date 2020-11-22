FROM node:14.14.0

# Create app directory
WORKDIR /app

# Copy package and yarn files for api server
COPY package.json package.json
COPY yarn.lock yarn.lock

# Install deps for the client
RUN yarn install

# Add source code
COPY . .

# Expose port
EXPOSE 80

# Run the app
CMD [ "yarn", "client" ]