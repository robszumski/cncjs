FROM cncjs/cncjs:v1.9.21
ADD .cncrc .cncrc
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y udev          
RUN ./node_modules/.bin/electron-rebuild -f -v 2.0.18 --module-dir /dist/cnc/
