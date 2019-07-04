#!/bin/bash

echo "Booting Docker.."
sudo service docker start
bootdocker=$?
if [ $bootdocker -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Stopping Previous ElasticSearch Setup.."
docker stop elasticsearch-5.5.2
dstop=$?
if [ $dstop -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Removing Previous ElasticSearch Setup.."
docker rm elasticsearch-5.5.2
drm=$?
if [ $drm -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Removing Previous Docker Network.."
docker network rm esnetwork
dnrm=$?
if [ $dnrm -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Creating New Docker Network.."
docker network create esnetwork
dnc=$?
if [ $dnc -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Creating New ElasticSearch Setup.."
docker run -d --name elasticsearch-5.5.2 --net esnetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:5.5.2
drun=$?
if [ $drun -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Converting GEOJSON file to SHP file.."
ogr2ogr --debug on -progress -f 'ESRI Shapefile' barangays.shp barangays.geojson
convert=$?
if [ $convert -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi

echo "Loading SHP file to ElasticSearch.."
ogr2ogr -f 'ElasticSearch' http://localhost:9200 barangays.shp 
load2es=$?
if [ $load2es -eq 0 ]; then
    echo OK
else
    echo FAIL
    exit 1
fi
