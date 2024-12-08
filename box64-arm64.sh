apt update
apt upgrade
cd /opt/
mkdir box64-nightly
git clone https://github.com/ptitSeb/box64
cd box64
mkdir build
cd build
cmake .. -DARM64=ON -DBAD_SIGNAL=ON -DBOX32=ON -DBOX32_BINFMT=ON -DSD8G2=ON -DARM_DYNAREC=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo --install-prefix=/opt/box64-nightly/
make -j$(nproc) install
cd /opt
tar -czvf box64-nightly.tar.gz box64-nightly/
