FROM ubuntu/nginx:latest
WORKDIR /app
## Step 1:
# Copy website static files to the server
COPY website /var/www/html
COPY Makefile Dockerfile *.yaml /app/
## Step 2:
# Expose port 80
EXPOSE 80

