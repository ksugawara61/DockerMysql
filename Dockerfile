FROM mysql:5.7.27

LABEL maintenar "katsuya sugawara"

# for default mysql setting
COPY ./etc/mysql/my.cnf /etc/mysql/my.cnf

# tmp
RUN apt-get update \
 && apt-get install -y procps net-tools

# TODO networking setting
# TODO volume setting

ENTRYPOINT mysqld
