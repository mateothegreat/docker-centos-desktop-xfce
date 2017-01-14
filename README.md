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

docker run -it appsoa/docker-centos-desktop-xfce:testing /bin/bash
docker run -it appsoa/docker-centos-desktop-xfce:testing /bin/bash
```