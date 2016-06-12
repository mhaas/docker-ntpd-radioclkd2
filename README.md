# NTP server image for SHM reference clock #

I use this image with my [radioclkd2](https://github.com/mhaas/docker-radioclkd2-gpio) image.

Work in progress - not useful yet.

## TODO ##

- Investigate impact of `disable ntp` in config - is adjustment of system time necessary to
  accurately serve time via NTP?
- Drop privileges, use shared sysv ipc namespace
- Investigate PPS
- Add some explanatory links
- Improve config wrt security, add EXPOSE statements.
