FROM osrm/osrm-backend

RUN apt-get update
RUN apt-get install -y wget

WORKDIR /data
RUN wget -c https://download.geofabrik.de/asia/japan-latest.osm.pbf \
    && /usr/local/bin/osrm-extract -p /opt/car.lua /data/japan-latest.osm.pbf \
    && /usr/local/bin/osrm-partition /data/japan-latest.osrm \
    && /usr/local/bin/osrm-customize /data/japan-latest.osrm

EXPOSE 5000
