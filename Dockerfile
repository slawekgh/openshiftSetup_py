FROM nginx:1.15.0
MAINTAINER gimboo
RUN apt-get update && apt-get install -y procps vim
RUN chown -R nginx /var/cache/nginx && chown -R nginx /var/run && chown -R nginx  /usr/share/nginx/html && chown -R nginx  /usr/share/nginx/html/index.html && mkdir /var/cache/nginx/client_temp/ && chown -R nginx /var/cache/nginx/client_temp/ && mkdir /var/cache/nginx/proxy_temp && chown -R nginx /var/cache/nginx/proxy_temp && mkdir /var/cache/nginx/fastcgi_temp && chown -R nginx /var/cache/nginx/fastcgi_temp && mkdir /var/cache/nginx/uwsgi_temp && chown -R nginx /var/cache/nginx/uwsgi_temp  && mkdir /var/cache/nginx/scgi_temp && chown -R nginx /var/cache/nginx/scgi_temp && touch /var/run/nginx.pid && chown nginx /var/run/nginx.pid
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
USER nginx
CMD hostname  > /tmp/index.html && nginx -g "daemon off;" 
