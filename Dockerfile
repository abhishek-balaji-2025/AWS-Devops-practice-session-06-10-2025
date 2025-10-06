# From base image
FROM nginx:latest

# Copy index.html file
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# start the service
CMD ["nginx", "-g", "daemon off;"]


