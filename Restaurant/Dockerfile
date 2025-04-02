FROM nginx:latest

WORKDIR /var/www/html
RUN apt-get update -y && apt-get upgrade -y && apt-get install apt vim -y
RUN rm -rf *.html
COPY . .
EXPOSE 80

CMD ["nginx","-g", "daemon off;"]
