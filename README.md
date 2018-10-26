### About

Winbox via wine on Ubuntu.
Winbox is a native Win32 utility for administrate Mikrotik Router OS.
Winbox v3.18

---

### Usage
`docker run -it --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --net=host chds/winbox`

Don't forget to issue permission to connect to X11:
`xhost local:root`
or else

