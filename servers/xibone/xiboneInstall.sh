#!/bin/sh
# XiBone install script

# No need to install node.js - beaglebone black comes with it preloaded

echo "Installing XiBone ..."
echo ""
echo "setting current data and time from ntp"
sudo ntpdate -b pool.ntp.org

echo "creating xibone directory"
mkdir -p ~/xibone

echo "change permissions on xibone.sh"
sudo chmod ugo+x ./xibone.sh

echo "copying xiduino.sh"
cp ./xibone.sh ~/xibone/.

echo "copying xiserver.js"
cp ../xiserver/xiserver.js ~/xibone/.

echo "loading node-gyp"
sudo npm install --prefix ~/xibone node-gyp

echo "loading johnny-five"
sudo npm install --prefix ~/xibone johnny-five

echo "loading beaglebone-io"

sudo npm install  --prefix ~/xibone beaglebone-io

echo "loading websocket"

sudo npm install --prefix ~/xibone websocket

echo "installing winston"

sudo npm install --prefix ~/xibone winston

echo "installing open"
sudo npm install --prefix ~/xibone open

echo "!!!! Install Complete !!!"
echo
echo
echo "To start XiBone: "
echo "  cd ~/xibone"
echo "  bash xibone.sh"
echo
echo "You may be prompted for sudo priveleges".








