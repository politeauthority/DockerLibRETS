cd /tmp/
wget https://s3-us-west-2.amazonaws.com/boojdata/dependancies/swig-3.0.8.tar.gz
tar -xvf swig-3.0.8.tar.gz
cd swig-3.0.8/
wget https://s3-us-west-2.amazonaws.com/boojdata/dependancies/pcre-8.39.tar.gz
./Tools/pcre-build.sh
./configure
make
make install
cd ../
wget https://s3-us-west-2.amazonaws.com/boojdata/dependancies/librets-1.6.2.tar.gz
tar -xvf librets-1.6.2.tar.gz
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