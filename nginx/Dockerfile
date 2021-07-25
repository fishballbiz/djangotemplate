FROM nginx:latest

COPY app_nginx.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx
RUN  rm /etc/nginx/conf.d/default.conf
RUN  mkdir -p /var/log/app/nginx/

CMD ["nginx", "-g", "daemon off;"]
