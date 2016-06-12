# NTP server image for SHM reference clock #

I use this image with my [radioclkd2](https://github.com/mhaas/docker-radioclkd2-gpio) image.

Work in progress - not useful yet.

## Notes on PPS ##

A pulse-per-second (PPS) signal is (apparently?) often used to gain a better reference on
the duration of a second. In other words, the PPS signal ticks very accurately once per second.
This information must be then be augmented by a "real" time source which also delivers the
actual time and date. The PPS and "real" time source may be the same physical device, e.g. a
radio clock or a GPS clock. Even for the same device, the PPS signal apparently provides an increase
in accuracy as the processing of an actual time stamp is more noisey.

- [NTP docs on PPS in general ](http://doc.ntp.org/4.2.8/pps.html)
- [NTP docs on kernel-side PPS](http://doc.ntp.org/4.2.8/kernpps.html)
- [NTP docs for the PPS reference clock driver](http://doc.ntp.org/4.2.8/drivers/driver22.html)
- [NTP docs for the GPS reference clock driver (also handle PPS)](http://doc.ntp.org/4.2.8/drivers/driver20.html)

## TODO ##

- Investigate impact of `disable ntp` in config - is adjustment of system time necessary to
  accurately serve time via NTP?
- Drop privileges, use shared sysv ipc namespace
- Investigate PPS
- Add some explanatory links
- Improve config wrt security, add EXPOSE statements.
