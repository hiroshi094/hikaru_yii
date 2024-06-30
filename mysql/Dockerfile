FROM mysql:8.4

# set locale
RUN microdnf install -y glibc-locale-source \
    && localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

# mount .cnf file
RUN if [ -e /etc/mysql/conf.d ]; then rm -rf /etc/mysql/conf.d; fi
COPY ./my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 644 /etc/mysql/conf.d/my.cnf
