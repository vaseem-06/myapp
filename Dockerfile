# Use an official Linux base image
FROM ubuntu:22.04

# Set environment variables to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
