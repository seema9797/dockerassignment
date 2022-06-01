FROM ubuntu
RUN apt update
RUN apt install -y mysql-server
RUN service mysql start
ADD ubuntu.sh /
ENTRYPOINT ["/bin/bash", "/ubuntu.sh"]
