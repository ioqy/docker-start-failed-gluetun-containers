# docker-start-failed-gluetun-containers
Restart containers connected to gluetun which didn't properly start after boot

## Install

```sh
sudo wget --quiet --output-document /etc/systemd/system/docker-start-failed-gluetun-containers.service https://raw.githubusercontent.com/ioqy/docker-start-failed-gluetun-containers/main/docker-start-failed-gluetun-containers.service
sudo systemctl daemon-reload
sudo systemctl enable docker-start-failed-gluetun-containers
```

## Uninstall

```sh
sudo systemctl disable docker-start-failed-gluetun-containers
sudo rm /etc/systemd/system/docker-start-failed-gluetun-containers.service
sudo systemctl daemon-reload
```