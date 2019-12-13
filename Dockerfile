FROM infotechsoft/ember-cli:latest

LABEL name="ember-cli-chrome ${EMBER_VERSION}" \
      maintainer="Luis Averhoff <luis@infotechsoft.com>" \
	  build-date="${BUILD_DATE}"

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/ \
	CI=true
	
RUN echo "http://dl-4.alpinelinux.org/alpine/latest-stable/main" >> /etc/apk/repositories \
   &&  echo "http://dl-4.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories \
   &&  apk upgrade \
   &&  apk add --no-cache chromium \
   &&  rm -rf /var/cache/* \
   &&  ln -s /usr/bin/chromium-browser /usr/bin/google-chrome # Testem looks for google-chrome