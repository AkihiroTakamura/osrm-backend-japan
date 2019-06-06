# osrm-backend-japan

osrm-backend with japan route data

Wrapped [From this service](https://github.com/Project-OSRM/osrm-backend)

# Getting Started

`docker run -it -p 5000:5000 akihirotakamura/osrm-backend-japan:latest osrm-routed --algorithm mld /data/japan-latest.osrm `

after service stated,

`curl -v http://localhost:5000/route/v1/driving/13.388860,52.517037;13.385983,52.496891?steps=true`

# Web Apis

See [here](https://github.com/Project-OSRM/osrm-backend/blob/master/docs/http.md)
