FROM cncjs/cncjs:v1.9.20
RUN apt-get update
RUN apt-get install -y udev          
RUN ./node_modules/.bin/electron-rebuild -f -v 2.0.18 --module-dir /dist/cnc/
