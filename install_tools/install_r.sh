#!/bin/bash

# AbbyMoore 7.11.18
# REF http://tdhock.github.io/blog/2017/compiling-R/
# Download R on workspace (/helga/cluster/abem16); install on home dir 
# Dependent packages: zlib, curl, bzip2, xz, pcre

cd /helga/cluster/abem16/software

#Download R
wget https://cran.r-project.org/src/base/R-3/R-3.5.0.tar.gz
tar -xf R-3.5.0.tar.gz

#Install zlib
cd /helga/cluster/abem16/software/R-3.5.0
wget http://zlib.net/zlib-1.2.11.tar.gz
tar xzvf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure --prefix=$HOME/packages
make
make install

export PATH=$HOME/packages/bin:$PATH
export LD_LIBRARY_PATH=$HOME/packages/lib:$LD_LIBRARY_PATH 
export CFLAGS="-I$HOME/packages/include"
export LDFLAGS="-L$HOME/packages/lib"

#Install bzip2
cd /helga/cluster/abem16/software/R-3.5.0
wget http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
tar xzvf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6
sed -i 's/^CFLAGS=-Wall/CFLAGS=-fPIC -Wall/' Makefile
make -f Makefile-libbz2_so
make clean
make
make -n install PREFIX=$HOME/packages
make install PREFIX=$HOME/packages

#Install xz
cd ~/software/R-3.5.0
wget https://tukaani.org/xz/xz-5.2.3.tar.gz
tar xf xz-5.2.3.tar.gz
cd xz-5.2.3
./configure --prefix=$HOME/packages
make
make install

#Install pcre
cd ~/software/R-3.5.0
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.41.tar.bz2
tar xf pcre-8.41.tar.bz2
cd pcre-8.41
./configure --enable-utf8 --prefix=$HOME/packages 
make 
make install

#Install curl
cd ~/software/R-3.5.0
wget --no-check-certificate https://curl.haxx.se/download/curl-7.47.1.tar.gz
tar xzvf curl-7.47.1.tar.gz
cd curl-7.47.1
./configure --prefix=$HOME/packages
make -j3
make install

#Install R
cd ~/software/R-3.5.0
CPPFLAGS=-I$HOME/software/packages/include LDFLAGS="-L$HOME/packages/lib -Wl,-rpath=$HOME/packages/lib" ./configure --prefix=$HOME/packages --with-cairo --with-blas --with-lapack --enable-R-shlib
make
make install

