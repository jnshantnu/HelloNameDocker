FROM nginx:alpine

# Copy the static files to the nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Copy custom nginx config to listen on port 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
