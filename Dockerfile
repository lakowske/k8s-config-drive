FROM lakowske/k8s-keys

MAINTAINER Seth Lakowske <lakowske@gmail.com>

RUN mkdir /config-drive

RUN mkdir /iso

RUN apk add --update cdrkit gettext && rm -rf /var/cache/apk/*

ADD ./create-config-drive /

ADD ./controller-install.sh /

ADD ./worker-install.sh /

ADD ./user_data /

RUN chmod 755 /create-config-drive

CMD /create-config-drive

