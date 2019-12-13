# docker-ember
<a href="https://emberjs.com/"><img src="https://emberjs.com/images/brand/ember_Tomster-Lockup-b368131eb80ecbcbaf2d23fd4cb27295.png" alt="EmberJS" height="48px"/></a> docker image based on <a href="https://nodejs.org"><img src="https://nodejs.org/static/images/logos/nodejs-new-pantone-black.png" alt="NodeJS" height="48px"/></a>
Minimal installation of EmberJS on NodeJS LTS Alpine.

## Base Image
 * [infotechsoft/ember-cli](https://github.com/infotechsoft/docker-ember) built on node:alpine
  
## Installed
 * chromium stable

## Settings
	
    EXPOSE 4200 ${LIVE_RELOAD_PORT} 
    VOLUME /usr/local/ember
    WORKDIR /usr/local/ember
    CMD ["ember", "server", "--live-reload-port", "${LIVE_RELOAD_PORT}"]


## Running

    docker run -d -p 4200:4200 -p 9999:9999 -v $(pwd):/usr/local/ember infotechsoft/ember-cli-chrome
    # starts `ember server` in /usr/local/ember

## Building an Ember Application

    docker run --rm -v $(pwd):/usr/local/ember infotechsoft/ember-cli-chrome ember build

## Testing an Ember Application

    docker run --rm -v $(pwd):/usr/local/ember infotechsoft/ember-cli-chrome ember test
	
# Maintainer 
![INFOTECH Soft](http://infotechsoft.com/wp-content/uploads/2017/04/InfotechSoft_logo-small.png "INFOTECH Soft, Inc.")