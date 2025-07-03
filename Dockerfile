# Use the official Nginx image as a base
FROM nginx:alpine

# Copy static files from Hugo's output (public folder) to Nginx's web directory
COPY public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# No need for CMD as nginx is already set to run by default in the official image
