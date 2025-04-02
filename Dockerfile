FROM nginx:latest

WORKDIR /var/www/html
RUN apt install vim -y
COPY . /var/www/html

EXPOSE 80

CMD ["nginx","-g", "daemon off;"]
