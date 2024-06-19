FROM nginx
MAINTAINER v.marreiros1@gmail.com

RUN apt-get update && apt-get install -y vim
RUN echo "Setup"

COPY ./app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]