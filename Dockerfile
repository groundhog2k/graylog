FROM graylog/graylog:2.5
LABEL maintainer="goeran.poehner@gmail.com"
LABEL description="Latest Graylog2 with actual GeoLite2 city database for usage in Graylog2"

RUN mkdir -p /etc/graylog/server
ADD http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz /etc/graylog/server
RUN tar xf /etc/graylog/server/GeoLite2-City.tar.gz -C /etc/graylog/server --strip-components=1
