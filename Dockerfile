FROM osrm/osrm-backend

RUN apt-get update
RUN apt-get install -y wget

WORKDIR /data
RUN wget -c https://download.geofabrik.de/asia/japan/kanto-latest.osm.pbf \
    && /usr/local/bin/osrm-extract -p /opt/car.lua /data/kanto-latest.osm.pbf \
    && /usr/local/bin/osrm-partition /data/kanto-latest.osrm \
    && /usr/local/bin/osrm-customize /data/kanto-latest.osrm


#ENTRYPOINT [ "/usr/local/bin/osrm-routed --algorithm mld /data/kanto-latest.osrm" ]

EXPOSE 5000
