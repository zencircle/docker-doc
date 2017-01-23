# Webserver container with CGI python script
# Using RHEL 7 base image and Apache Web server
# Version 1

# Pull the rhel image from the local repository
FROM webwithdb
USER root

MAINTAINER Maintainer_Name

RUN echo "The Web Server is Running 90 now" > /var/www/html/index.html
EXPOSE 90

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
