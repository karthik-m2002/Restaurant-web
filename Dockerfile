FROM nginx:latest

WORKDIR /usr/share/nginx/html
RUN apt-get update -y && apt-get upgrade -y && apt-get install apt vim -y
RUN rm -rf *.html
COPY . .
RUN cp -r Restaurant/* .
RUN rm -rf Restaurant
EXPOSE 80

CMD ["nginx","-g", "daemon off;"]
