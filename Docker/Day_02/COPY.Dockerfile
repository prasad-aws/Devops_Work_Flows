FROM almalinux
RUN yum install -y httpd
LABEL maintainer="Durga Prasad <durgaprasad.saragadam@xius.com>"
WORKDIR /var/www/html
COPY index.html .