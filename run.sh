# --restart=always enables autostart on boot:
# https://serverfault.com/questions/633067/how-do-i-auto-start-docker-containers-at-system-boot
#docker run --ipc="container:radioclkd2-gpio" --name=ntpd-radioclkd2 --privileged mhaas/ntpd-radioclkd2:latest

docker run --name=ntpd-radioclkd2 --privileged mhaas/ntpd-radioclkd2:latest
