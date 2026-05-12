# use lightweight Nginix image

FROM nginx:alpine

# Remove default nginix static files

RUN rm -rf /usr/share/nginx/html/*

# copy HTML  files into nginix directery

COPY cloud_eng.html /usr/share/nginx/html/index.html

COPY cloud_system-engineering.html /usr/share/nginx/html/cloud_system-engineering.html


# eXPOSEE port 80
EXPOSE 80

# Start nginx server

CMD ["nginx", "-g", "daemon off;"]