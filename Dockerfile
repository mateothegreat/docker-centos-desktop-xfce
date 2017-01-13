#
#
#
#
#
FROM appsoa/docker-centos-base-java:testing

ENV TZ="America/Phoenix" \
    DISPLAY=":1"

RUN useradd -g wheel user && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    yum -y install epel-release && \
    yum --enablerepo=epel -y -x gnome-keyring --skip-broken groups install "Xfce" && \
    yum -y install supervisor && \
    yum -y clean all

RUN touch /var/run/supervisord.pid && \
    chmod -R 775 /var/log/supervisor /var/run/supervisor /var/run/supervisord.pid && \
    chown -R user:wheel /home/user /var/log/supervisor /var/run/supervisor /var/run/supervisord.pid

# RUN xfconf-query -c xfce4-session -p /startup/ssh-agent/enabled -n -t bool -s false && \
#     xfconf-query -c xfce4-session -p /startup/gpg-agent/enabled -n -t bool -s false 
RUN    rm /etc/xdg/autostart/at-spi-dbus-bus.desktop \
          /etc/xdg/autostart/caribou-autostart.desktop \
          /etc/xdg/autostart/xscreensaver.desktop \
          /etc/xdg/autostart/xfce-polkit.desktop