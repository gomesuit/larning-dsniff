#!/bin/bash -xe



wget http://download.oracle.com/berkeley-db/db-3.0.55.tar.gz
tar zxvf db-3.0.55.tar.gz
chown -R root.root db-3.0.55
cd db-3.0.55/build_unix/
../dist/configure --prefix=/usr --enable-compat185
make
make install

cd

apt-get install -y libpcap-dev
# apt-get install -y libnet-dev
wget http://packetfactory.openwall.net/libnet/dist/deprecated/libnet-1.0.2a.tar.gz
tar zxvf libnet-1.0.2a.tar.gz
cd Libnet-1.0.2a/
./configure
make
make install

apt-get install -y libnids-dev

wget http://monkey.org/~dugsong/dsniff/dsniff-2.3.tar.gz
tar zxvf dsniff-2.3.tar.gz
chown -R root.root dsniff-2.3
cd dsniff-2.3
./configure
make
