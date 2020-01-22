# Install Node.js 12 LTS
FROM node:erbium-stretch

# Install simple http server for serving static content
RUN yarn global add http-server

# Make the 'product' folder the current working directory
WORKDIR /product

# Copy project files and folders to the current working directory (i.e. 'product' folder)
COPY . .

# Install project dependencies
RUN yarn

# Build docs
RUN yarn docs:build

# Expose port 8080
EXPOSE 8080

# Run static server (localhost:8080)
CMD [ "http-server", "docs/.vuepress/dist" ]