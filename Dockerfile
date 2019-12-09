FROM nginx:alpine
#RUN apk --update && --upgrade
COPY index.html /usr/share/nginx/html/index.html
expose 80
