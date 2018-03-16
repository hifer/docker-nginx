FROM nginx:stable-alpine

LABEL maintainer="NGINX Certbot Docker<lvhifer@163.com>"

RUN apk add --no-cache certbot

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf
COPY nginx.vh.default.conf /etc/nginx/nginx.vh.default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
