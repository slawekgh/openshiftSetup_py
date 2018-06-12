FROM nginx:1.15.0
RUN apt-get update && apt-get install -y procps vim
RUN chown nginx /var/cache/nginx/ && chown nginx /var/run/ && chown nginx  /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
USER nginx
CMD hostname  > /usr/share/nginx/html/index.html && nginx -g "daemon off;"
