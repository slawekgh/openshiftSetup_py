FROM nginx:1.15.0
RUN apt-get update && apt-get install -y procps vim
RUN chown -R nginx /var/cache/nginx && chown -R nginx /var/run/ && chown -R nginx  /usr/share/nginx/html && chown -R nginx  /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
USER nginx
CMD hostname  > /tmp/index.html && nginx -g "daemon off;" 
