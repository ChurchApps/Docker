FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx nodejs

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

#ADD web /content
#ADD web /var/www/html/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 3402

# Set the default command to execute
# when creating a new container
CMD service nginx start