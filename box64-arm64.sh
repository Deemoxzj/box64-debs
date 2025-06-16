sudo apt update
sudo apt upgrade
sudo apt install checkinstall -y
cd /opt/
rm -rf box64 -y
#git clone https://github.com/ptitSeb/box64
#正式版
wget 'https://github.com/ptitSeb/box64/archive/refs/tags/v0.3.6.tar.gz'
tar -xvf v0.3.6.tar.gz
mv v0.3.6.tar.gz box64
cd box64
mkdir build
cd build
cmake .. -DWOW64=ON -DARM64=ON -DBAD_SIGNAL=ON -DBOX32=ON -DBOX32_BINFMT=ON -DSD8G2=ON -DARM_DYNAREC=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo -DWOW --install-prefix=/usr/
sudo checkinstall make install
