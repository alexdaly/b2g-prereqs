#!/bin/bash

chmod 777 install.sh


sudo mkdir /usr/B2G
cd B2G


echo "export CC=`which gcc-4.6`" > B2G/.userconfig
echo "export CXX=`which g++-4.6`" >> B2G/.userconfig

#prereqs
sudo apt-get install autoconf2.13 bison bzip2 ccache curl flex gawk gcc-4.6 g++ 4.6 g++-multilib 4.6 git ia32-libs lib32ncurses5-dev lib32z1-dev libgl1-mesa-dev libx11-dev make zip -y


#symlinks
sudo ln -s /usr/lib/i386-linux-gnu/libX11.so.6 /usr/lib/i386-linux-gnu/libX11.so

sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so

#clone
git clone git://github.com/mozilla-b2g/B2G.git 


#configure emulator
 

echo 'Name user@user.com' | ./config.sh emulator

#build
./build.sh




