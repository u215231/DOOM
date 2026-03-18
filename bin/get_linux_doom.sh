# Author: Marc Bosch Manzano
# Creation: 2026-02-09
# Revision: 2026-03-18

cd ../linuxdoom-1.10
mkdir -p linux
make clean
make -j$(nproc)