#!/bin/bash
sudo apt-get update -y
apt-get upgrade -y
sudo apt-get install gnupg2 curl wget git software-properties-common -y
sudo curl https://packages.grafana.com/gpg.key | apt-key add -
add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt-get update -y
sudo apt-get install grafana -y
sudo systemctl start grafana-server
sudo systemctl enable grafana-server