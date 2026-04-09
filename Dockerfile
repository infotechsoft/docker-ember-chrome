FROM infotechsoft/ember-cli:6.8.0-node-25

ARG BUILD_DATE

LABEL maintainer="Thomas J. Taylor <thomas@infotechsoft.com>" \
	  org.opencontainers.image.title="INFOTECH Soft Ember on Docker with Chrome" \
	  org.opencontainers.image.description="ember-cli, node, chromium " \
	  org.opencontainers.image.version="ember-${EMBER_VERSION}-node-${NODE_VERSION}" \
	  org.opencontainers.image.created="${BUILD_DATE}" \
	  org.opencontainers.image.authors="Thomas J. Taylor <thomas@infotechsoft.com>,Luis Averhoff <luis@infotechsoft.com>"
	
RUN apt update \
   && apt install -y chromium \
   &&  rm -rf /var/cache/* \
   &&  ln -s /usr/bin/chromium-browser /usr/bin/google-chrome # Testem looks for google-chrome

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/ \
	CI=true