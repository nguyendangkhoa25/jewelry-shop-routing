# Use Nginx as a lightweight server to serve the static files
FROM nginx:alpine
ENV NODE_ENV production

# Copy your custom nginx configuration file to the container
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world
EXPOSE 80
EXPOSE 443

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
