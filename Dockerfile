FROM couchdb:3.1.1

COPY views.json /tmp/
COPY docker-entrypoint.sh /usr/local/bin/
COPY bbrf-init.sh /usr/local/bin/
COPY local.ini /opt/couchdb/etc/

RUN apt-get install -y curl
