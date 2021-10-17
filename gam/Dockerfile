FROM python:2.7

RUN mkdir -p /data && \
	cd /data && \
	git clone -b master https://github.com/jay0lee/GAM gam && \
	mkdir /data/gam/oauth && \
	touch /data/gam/client_secrets.json /data/gam/nobrowser.txt

ADD gam.sh /usr/local/bin/gam

