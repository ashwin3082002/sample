# Use a lightweight web server image
FROM nginx:alpine

# Create a non-root user UID 1000
RUN adduser -D -u 1000 appuser

# Copy your HTML file into Nginx's default directory
WORKDIR /usr/share/nginx/html
COPY index.html .

# Switch to non-root user
USER appuser

# Expose default HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
