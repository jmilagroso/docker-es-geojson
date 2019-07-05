# Loading GeoJSON into Docker ElasticSearch

## Operating System
[Ubuntu 18.04](https://ubuntu.com/) - is an open source software operating system that runs from the desktop, to the cloud, to all your internet connected things.

## Dependencies
[Docker](https://www.docker.com/) - is a software platform designed to make it easier to create, deploy, and run applications by using containers. It allows developers to package up an application with all the parts it needs in a container, and then ship it out as one package.
```
Client:
 Version:           18.06.1-ce
 API version:       1.38
 Go version:        go1.10.3
 Git commit:        e68fc7a
 Built:             Tue Aug 21 17:24:56 2018
 OS/Arch:           linux/amd64
 Experimental:      false

Server:
 Engine:
  Version:          18.06.1-ce
  API version:      1.38 (minimum version 1.12)
  Go version:       go1.10.3
  Git commit:       e68fc7a
  Built:            Tue Aug 21 17:23:21 2018
  OS/Arch:          linux/amd64
  Experimental:     false
```

[elasticsearch](https://hub.docker.com/_/elasticsearch) - Elasticsearch is a powerful open source search and analytics engine that makes data easy to explore.
```
Tag: 5.5.2
```

[ogr2ogr](https://gdal.org/programs/ogr2ogr.html) - can be used to convert simple features data between file formats. It can also perform various operations during the process, such as spatial or attribute selection, reducing the set of attributes, setting the output coordinate system or even reprojecting the features during translation.
```
Version: GDAL 2.4.0, released 2018/12/14
```

## Installations
- How to install Docker on Ubuntu 18.04 [here](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04).
- How to install ElasticSearch using Docker [here](https://hub.docker.com/_/elasticsearch?tab=description)
- How to install OGR2OGR on Ubuntu 18.04 [here](https://mothergeo-py.readthedocs.io/en/latest/development/how-to/gdal-ubuntu-pkg.html)

## Usage
```
$ ./run.sh <input existing GEOSJSON file> <output generated SHP file>
```

```
 ✘ jay@ThinkPad  ~/Desktop/docker-es-geojson  ./run.sh barangay.geojson barangay.shp
Booting Docker..
[sudo] password for jay: 
OK
Stopping Previous ElasticSearch Setup..
elasticsearch-5.5.2
OK
Removing Previous ElasticSearch Setup..
elasticsearch-5.5.2
OK
Removing Previous Docker Network..
esnetwork
OK
Creating New Docker Network..
b079dace808b99b0e526a8d60e188e37d6fafaae901a4d641d1d7558b5f90eeb
OK
Creating New ElasticSearch Setup..
c8b9530fcccd3f7514c97e2c53f225be73ea7c5d7f6c95bf5c82697b416d4e7d
OK
Converting GEOJSON file to SHP file..
GNM: GNMRegisterAllInternal
GNM: RegisterGNMFile
GNM: RegisterGNMdatabase
GeoJSON: First pass: 0.54 %
GeoJSON: First pass: 1.08 %
GeoJSON: First pass: 1.62 %
GeoJSON: First pass: 2.16 %
GeoJSON: First pass: 2.70 %
GeoJSON: First pass: 3.24 %
GeoJSON: First pass: 3.78 %
GeoJSON: First pass: 4.32 %
GeoJSON: First pass: 4.86 %
GeoJSON: First pass: 5.40 %
GeoJSON: First pass: 5.94 %
GeoJSON: First pass: 6.48 %
GeoJSON: First pass: 7.02 %
GeoJSON: First pass: 7.56 %
GeoJSON: First pass: 8.10 %
GeoJSON: First pass: 8.64 %
GeoJSON: First pass: 9.18 %
GeoJSON: First pass: 9.72 %
GeoJSON: First pass: 10.26 %
GeoJSON: First pass: 10.80 %
GeoJSON: First pass: 11.34 %
GeoJSON: First pass: 11.88 %
GeoJSON: First pass: 12.43 %
GeoJSON: First pass: 12.97 %
GeoJSON: First pass: 13.51 %
GeoJSON: First pass: 14.05 %
GeoJSON: First pass: 14.59 %
GeoJSON: First pass: 15.13 %
GeoJSON: First pass: 15.67 %
GeoJSON: First pass: 16.21 %
GeoJSON: First pass: 16.75 %
GeoJSON: First pass: 17.29 %
GeoJSON: First pass: 17.83 %
GeoJSON: First pass: 18.37 %
GeoJSON: First pass: 18.91 %
GeoJSON: First pass: 19.45 %
GeoJSON: First pass: 19.99 %
GeoJSON: First pass: 20.53 %
GeoJSON: First pass: 21.07 %
GeoJSON: First pass: 21.61 %
GeoJSON: First pass: 22.15 %
GeoJSON: First pass: 22.69 %
GeoJSON: First pass: 23.23 %
GeoJSON: First pass: 23.77 %
GeoJSON: First pass: 24.31 %
GeoJSON: First pass: 24.85 %
GeoJSON: First pass: 25.39 %
GeoJSON: First pass: 25.93 %
GeoJSON: First pass: 26.47 %
GeoJSON: First pass: 27.01 %
GeoJSON: First pass: 27.55 %
GeoJSON: First pass: 28.09 %
GeoJSON: First pass: 28.63 %
GeoJSON: First pass: 29.17 %
GeoJSON: First pass: 29.71 %
GeoJSON: First pass: 30.25 %
GeoJSON: First pass: 30.79 %
GeoJSON: First pass: 31.33 %
GeoJSON: First pass: 31.87 %
GeoJSON: First pass: 32.41 %
GeoJSON: First pass: 32.95 %
GeoJSON: First pass: 33.49 %
GeoJSON: First pass: 34.03 %
GeoJSON: First pass: 34.57 %
GeoJSON: First pass: 35.11 %
GeoJSON: First pass: 35.65 %
GeoJSON: First pass: 36.20 %
GeoJSON: First pass: 36.74 %
GeoJSON: First pass: 37.28 %
GeoJSON: First pass: 37.82 %
GeoJSON: First pass: 38.36 %
GeoJSON: First pass: 38.90 %
GeoJSON: First pass: 39.44 %
GeoJSON: First pass: 39.98 %
GeoJSON: First pass: 40.52 %
GeoJSON: First pass: 41.06 %
GeoJSON: First pass: 41.60 %
GeoJSON: First pass: 42.14 %
GeoJSON: First pass: 42.68 %
GeoJSON: First pass: 43.22 %
GeoJSON: First pass: 43.76 %
GeoJSON: First pass: 44.30 %
GeoJSON: First pass: 44.84 %
GeoJSON: First pass: 45.38 %
GeoJSON: First pass: 45.92 %
GeoJSON: First pass: 46.46 %
GeoJSON: First pass: 47.00 %
GeoJSON: First pass: 47.54 %
GeoJSON: First pass: 48.08 %
GeoJSON: First pass: 48.62 %
GeoJSON: First pass: 49.16 %
GeoJSON: First pass: 49.70 %
GeoJSON: First pass: 50.24 %
GeoJSON: First pass: 50.78 %
GeoJSON: First pass: 51.32 %
GeoJSON: First pass: 51.86 %
GeoJSON: First pass: 52.40 %
GeoJSON: First pass: 52.94 %
GeoJSON: First pass: 53.48 %
GeoJSON: First pass: 54.02 %
GeoJSON: First pass: 54.56 %
GeoJSON: First pass: 55.10 %
GeoJSON: First pass: 55.64 %
GeoJSON: First pass: 56.18 %
GeoJSON: First pass: 56.72 %
GeoJSON: First pass: 57.26 %
GeoJSON: First pass: 57.80 %
GeoJSON: First pass: 58.34 %
GeoJSON: First pass: 58.88 %
GeoJSON: First pass: 59.42 %
GeoJSON: First pass: 59.97 %
GeoJSON: First pass: 60.51 %
GeoJSON: First pass: 61.05 %
GeoJSON: First pass: 61.59 %
GeoJSON: First pass: 62.13 %
GeoJSON: First pass: 62.67 %
GeoJSON: First pass: 63.21 %
GeoJSON: First pass: 63.75 %
GeoJSON: First pass: 64.29 %
GeoJSON: First pass: 64.83 %
GeoJSON: First pass: 65.37 %
GeoJSON: First pass: 65.91 %
GeoJSON: First pass: 66.45 %
GeoJSON: First pass: 66.99 %
GeoJSON: First pass: 67.53 %
GeoJSON: First pass: 68.07 %
GeoJSON: First pass: 68.61 %
GeoJSON: First pass: 69.15 %
GeoJSON: First pass: 69.69 %
GeoJSON: First pass: 70.23 %
GeoJSON: First pass: 70.77 %
GeoJSON: First pass: 71.31 %
GeoJSON: First pass: 71.85 %
GeoJSON: First pass: 72.39 %
GeoJSON: First pass: 72.93 %
GeoJSON: First pass: 73.47 %
GeoJSON: First pass: 74.01 %
GeoJSON: First pass: 74.55 %
GeoJSON: First pass: 75.09 %
GeoJSON: First pass: 75.63 %
GeoJSON: First pass: 76.17 %
GeoJSON: First pass: 76.71 %
GeoJSON: First pass: 77.25 %
GeoJSON: First pass: 77.79 %
GeoJSON: First pass: 78.33 %
GeoJSON: First pass: 78.87 %
GeoJSON: First pass: 79.41 %
GeoJSON: First pass: 79.95 %
GeoJSON: First pass: 80.49 %
GeoJSON: First pass: 81.03 %
GeoJSON: First pass: 81.57 %
GeoJSON: First pass: 82.11 %
GeoJSON: First pass: 82.65 %
GeoJSON: First pass: 83.19 %
GeoJSON: First pass: 83.74 %
GeoJSON: First pass: 84.28 %
GeoJSON: First pass: 84.82 %
GeoJSON: First pass: 85.36 %
GeoJSON: First pass: 85.90 %
GeoJSON: First pass: 86.44 %
GeoJSON: First pass: 86.98 %
GeoJSON: First pass: 87.52 %
GeoJSON: First pass: 88.06 %
GeoJSON: First pass: 88.60 %
GeoJSON: First pass: 89.14 %
GeoJSON: First pass: 89.68 %
GeoJSON: First pass: 90.22 %
GeoJSON: First pass: 90.76 %
GeoJSON: First pass: 91.30 %
GeoJSON: First pass: 91.84 %
GeoJSON: First pass: 92.38 %
GeoJSON: First pass: 92.92 %
GeoJSON: First pass: 93.46 %
GeoJSON: First pass: 94.00 %
GeoJSON: First pass: 94.54 %
GeoJSON: First pass: 95.08 %
GeoJSON: First pass: 95.62 %
GeoJSON: First pass: 96.16 %
GeoJSON: First pass: 96.70 %
GeoJSON: First pass: 97.24 %
GeoJSON: First pass: 97.78 %
GeoJSON: First pass: 98.32 %
GeoJSON: First pass: 98.86 %
GeoJSON: First pass: 99.40 %
GeoJSON: First pass: 99.94 %
GeoJSON: First pass: 100.00 %
GDAL: GDALOpen(barangays.geojson, this=0x13247f0) succeeds as GeoJSON.
GDAL: QuietDelete(barangays.shp) invoking Delete()
GDAL: GDALDriver::Create(ESRI Shapefile,barangays.shp,0,0,0,Unknown,(nil))
Shape: DBF Codepage = LDID/87 for barangays.shp
Shape: Treating as encoding 'ISO-8859-1'.
Warning 6: Normalized/laundered field name: 'province_id' to 'province_i'
Warning 6: Normalized/laundered field name: 'district_id' to 'district_i'
Warning 6: Normalized/laundered field name: 'standard_flag' to 'standard_f'
0...10...20...30...40...50...60...70...80...90...100 - done.
GDALVectorTranslate: 42058 features written in layer 'barangays'
GDAL: GDALClose(barangays.geojson, this=0x13247f0)
GDAL: GDALClose(barangays.shp, this=0x1352270)
OK
Loading SHP file to ElasticSearch..
OK
```

##  Check ElasticSearch Mapping
```
 ✘ jay@ThinkPad  ~/Desktop/docker-es-geojson  curl -XGET 'http://localhost:9200/_mapping'      
{"barangays":{"mappings":{"FeatureCollection":{"_meta":{"fid":"ogc_fid","geomfields":{"geometry":"POLYGON"}},"properties":{"geometry":{"type":"geo_shape"},"ogc_fid":{"type":"long"},"properties":{"properties":{"city":{"type":"text"},"city_id":{"type":"integer"},"district":{"type":"text"},"district_i":{"type":"text"},"province":{"type":"text"},"province_i":{"type":"integer"},"standard_f":{"type":"integer"},"xcode":{"type":"text"}}},"type":{"type":"text"}}}}}}%                                                                                                                   jay@ThinkPad  ~/Desktop/docker-es-geojson 
```

## UML diagram
![Image of UML Diagram](https://i.imgur.com/zwDUrBg.png)

## Notes
- This setup is for development purposes only.
- Shell script does not configure Docker ElasticSearch to persist data.
- Running `run.sh` will recreate the ff: Docker Network for ElasticSearch, Docker Container for ElasticSearch, SHP file based on GEOJSON file.
