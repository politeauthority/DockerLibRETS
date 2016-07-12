cd /tmp/
wget http://prdownloads.sourceforge.net/swig/swig-3.0.8.tar.gz
tar -xvf swig-3.0.8.tar.gz
cd swig-3.0.8/
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.39.tar.gz
./Tools/pcre-build.sh
./configure
make
make install
cd ../
wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.2.tar.gz
tar -xvf 1.6.2.tar.gz
cd ./libRETS-1.6.2
./autogen.sh 
CPPFLAGS="-L/usr/local/lib -I/usr/local/include"    \
 ./configure    --enable-examples                   \
                --enable-debug                      \
                --enable-depends                    \
                --enable-maintainer-documentation   \
                --enable-shared-dependencies
make
make install