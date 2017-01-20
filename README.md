# docker-centos-desktop-xfce

http://docs.xfce.org/xfce/start

```
docker rm -f xfce

docker run -id  --name xfce \
                appsoa/docker-centos-desktop-xfce:testing \
                supervisord



docker logs xfce -f
```



```
./docker-centos-tools/build.sh docker-centos-desktop-xfce/ virtualmachines-154415 docker-centos-desktop-xfce 1.0.0 gcr.io 
```
```
[matthew@sandbox-1 ~]$ docker-centos-tools/push.sh docker-centos-desktop-xfce virtualmachines-154415 docker-centos-desktop-xfce 1.0.0 gcr.io 
Pushing docker-centos-desktop-xfce:virtualmachines-154415
+ Tagging image..
        Docker Command: 
            docker tag docker-centos-desktop-xfce:1.0.0 gcr.io/virtualmachines-154415/docker-centos-desktop-xfce:1.0.0
            docker tag docker-centos-desktop-xfce:1.0.0 gcr.io/virtualmachines-154415/docker-centos-desktop-xfce:latest

+ Pushing built image to registry servers..
        Docker Command: 
            gcloud docker -- push gcr.io/virtualmachines-154415/docker-centos-desktop-xfce:1.0.0 

        The push refers to a repository [gcr.io/virtualmachines-154415/docker-centos-desktop-xfce]
        e1ddcc621d96: Preparing
        83093558239f: Preparing
        71ea070bae54: Preparing
        02f74b70e16c: Preparing
        34e7b85d83e4: Preparing
        71ea070bae54: Mounted from virtualmachines-154415/docker-centos-base-java
        34e7b85d83e4: Mounted from virtualmachines-154415/docker-centos-base-java
        02f74b70e16c: Mounted from virtualmachines-154415/docker-centos-base-java
        83093558239f: Pushed
        e1ddcc621d96: Pushed
        1.0.0: digest: sha256:fe0ebfb58ef042301b01a7ae69ab434aaf53e62782f99eb3f0d333a99bdeef54 size: 1370
```