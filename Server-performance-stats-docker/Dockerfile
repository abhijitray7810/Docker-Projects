# Use a base image with tools installed
FROM alpine:latest

# Install necessary tools
RUN apk update && apk add --no-cache bash procps coreutils findutils tree

# Create work directory
WORKDIR /app

# Copy the script into the container
COPY server-stats.sh /app/server-stats.sh

# Make it executable
RUN chmod +x /app/server-stats.sh

# Set default command to run the script
CMD ["/app/server-stats.sh"]
