### About

Winbox via wine based on Ubuntu image.
Winbox is a native Win32 configuration utility for Mikrotik Router OS.
Winbox v3.20

---

### Usage
`docker run -it --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --net=host chds/winbox`

If you want to save list of managed devices, just don't use '--rm' key and work with your own container.

Don't forget to issue permission to connect to X11:
`xhost local:root`
or else

