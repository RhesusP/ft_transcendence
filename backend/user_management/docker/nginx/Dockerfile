FROM nginx:1.25

RUN apt-get install openssl -y
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -newkey rsa:4096 -out /etc/nginx/ssl/transcendence.crt -keyout /etc/nginx/ssl/transcendence.key -subj "/C=FR/ST=Rhone-Alpes/L=Lyon/O=42/OU=42Lyon/CN=localhost"

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf