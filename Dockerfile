FROM nginx:stable

COPY index.html /usr/share/nginx/html
COPY css/* /usr/share/nginx/html/css/
COPY js/* /usr/share/nginx/html/js/
COPY models/* /usr/share/nginx/html/models/
COPY nginx.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

COPY ssl.csr /etc/nginx/ssl.csr
COPY ssl.key /etc/nginx/ssl.key

EXPOSE 443