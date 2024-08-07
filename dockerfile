# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the helloworld.html file to the Nginx HTML directory
COPY helloworld.html /usr/share/nginx/html/

# Expose port 8080
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

