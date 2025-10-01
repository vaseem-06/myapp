# Dockerfile
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nginx && apt-get clean
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
