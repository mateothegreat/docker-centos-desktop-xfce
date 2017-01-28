#
#
#
FROM    appsoa/docker-centos-base-java:1.8.0_60
MAINTAINER Matthew Davis <matthew@appsoa.io>

COPY    src/etc /etc

RUN     yum --enablerepo=epel -y -x gnome-keyring --skip-broken groups install "Xfce" && \
        yum -y clean all && \
        rm /etc/xdg/autostart/at-spi-dbus-bus.desktop \
          /etc/xdg/autostart/caribou-autostart.desktop \
          /etc/xdg/autostart/xscreensaver.desktop \
          /etc/xdg/autostart/xfce4-power-manager.desktop \
          /etc/xdg/autostart/xfsettingsd.desktop \
          /etc/xdg/autostart/xfce-polkit.desktop