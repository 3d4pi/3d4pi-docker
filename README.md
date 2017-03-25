# 3d4pi-docker
3d4pi related docker containers

## Build the containers
Run "make" in the base directory.

## Example
### Run gnoproj
```
docker run -it --rm  -v /data:/data gnoproj gnoproj -i /data/rawdata/00-0e-64-08-1e-39/master/1460401040/segment/1462366612/tiles/1462366620_531397-11-DECONV-INT16_EQR.tiff -d /data -m 00-0e-64-08-1e-39 -o ./
```
