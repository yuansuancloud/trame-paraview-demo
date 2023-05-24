# trame docker demo


## step 1: build base docker image

```
cd /pathto/trame-paraview-demo

wget https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.10&type=binary&os=Linux&downloadFile=ParaView-5.10.1-osmesa-MPI-Linux-Python3.9-x86_64.tar.gz

docker build . -t trame-paraview
```

## step 2: build app docker image

```
cd app

docker build  . -t trame-paraview-app
```

## step 3: run app
```
docker run -it --rm -p 8080:8080 trame-paraview-app
```

open http://localhost:8080