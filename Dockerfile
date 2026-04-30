FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY . .

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]