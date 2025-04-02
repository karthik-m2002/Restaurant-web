FROM nginx:latest

WORKDIR /var/www/html

COPY . .

EXPOSE 80

CMD ["nginx","-g", "daemon off;"]
