# docker-centos-desktop-xfce

http://docs.xfce.org/xfce/start

```
docker rm -f xfce
docker run -id  --name xfce \
                appsoa/docker-centos-desktop-xfce:testing
                
docker logs xfce -f
```