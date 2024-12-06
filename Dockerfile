# Use Nginx as a base image
FROM nginx:alpine

# Copy index.html to Nginx's default static content directory
COPY index.html /usr/share/nginx/html/

# Expose the default port for Nginx
EXPOSE 80

# Nginx runs automatically in its base image
CMD ["nginx", "-g", "daemon off;"]