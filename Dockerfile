# wikidist container
# VERSION 0.0.1

FROM turnkeylinux/dokuwiki-13.0

MAINTAINER Glenn Powers "glenn@net127.com"

RUN mkdir /var/www/.sync
RUN chown www-data /var/www/.sync

ADD btsync /usr/bin/btsync
ADD config.json /var/www/.sync/config.json

ADD btsync.init /etc/init.d/btsync.init
RUN chmod 755 /etc/init.d/btsync.init
RUN ln -fs /etc/init.d/btsync /etc/rc2.d/S08btsync

EXPOSE 8888 8088
