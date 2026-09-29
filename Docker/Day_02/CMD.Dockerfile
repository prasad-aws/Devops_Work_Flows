FROM almalinux

RUN yum install -y httpd

# CMD ["httpd", "-D", "FOREGROUND"] # For learning purpose, we are not using this command. because it will run the container for infinite time, but it will not run in background. so we are using below command to run the container for infinite time and also in background.

CMD ["tail", "-f", "/dev/null"]

# CMD instruction is used to run the container. It can be used to run a single command or a script. It can also be used to run multiple commands by using a shell script.

# systemctl start nginx

# CMD ["systemctl", "start", "nginx"] -> this will not work inside container, because does not have capabilities to contact kernal

# Instruction inside CMD should run the container for infinite time. command we are giving inside CMD should run in foreground, then we should take it into background