FROM almalinux
RUN yum install -y httpd

# RUN instruction is used to configure the image. like installing packages, configurations, creating user, etc.

# docker build --no-cache --progress=plain -t run:v1 .