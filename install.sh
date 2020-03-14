#!/bin/bash
git clone https://github.com/petersonti/utorrent.git
cd utorrent
#sudo apt-get install libssl1.0.0 libssl-dev

sudo tar xvf utserver.tar.gz -C /opt/
sudo ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver


sudo adduser --system --no-create-home utorrent
sudo addgroup --system utorrent

sudo cp utorrent.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start utorrent
sudo systemctl enable utorrent
