FROM mariadb:10.5

COPY ./MMOCoreORB/sql/swgemu.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=swgemu
ENV MYSQL_USER=swgemu
ENV MYSQL_PASSWORD=123456
