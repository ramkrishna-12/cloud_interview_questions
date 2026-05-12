# use lightweight Nginix image

FROM nginx:alpine

# Remove default nginix static files

RUN rm -rf /usr/share/nginix/html/*

# copy HTML  files into nginix directery

COPY cloud_eng.html /usr/share/nginix/html/index.html

COPY cloud_system-engineering.html /usr/share/nginix/html/cloud_system-engineering.html


# eXPOSEE port 80
EXPOSE 80

# Start nginix server

CMD ["nginix", "-g", "daemon off;"]