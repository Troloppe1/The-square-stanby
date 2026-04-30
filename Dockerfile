FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY . .

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]