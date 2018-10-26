FROM ubuntu

MAINTAINER Danila Chepurko <chds@tuta.io>

RUN dpkg --add-architecture i386 &&\
    apt-get -q update && \
    apt-get install --no-install-recommends --assume-yes wine32 && \
    apt-get clean &&\
    useradd -m winer

ADD https://download.mikrotik.com/routeros/winbox/3.18/winbox.exe /home/winer/winbox.exe
RUN chmod 755 /home/winer/winbox.exe
USER winer
RUN /bin/mkdir /home/winer/.wine

ENTRYPOINT /usr/lib/wine/wineserver32 && \
           /usr/lib/wine/wine /home/winer/winbox.exe