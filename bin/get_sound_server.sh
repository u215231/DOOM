# Author: Marc Bosch Manzano
# Creation: 2026-02-09
# Revision: 2026-03-18

cd ../sndserv
mkdir -p linux
make clean
make -j$(nproc)
sudo cp ./linux/sndserver /usr/local/bin
cp ./linux/sndserver ../linuxdoom-1.10
