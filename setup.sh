cd /root/
wget http://prdownloads.sourceforge.net/swig/swig-3.0.8.tar.gz
tar -xvf swig-3.0.8.tar.gz
wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.2.tar.gz
tar -xvf 1.6.2.tar.gz
cd libRETS-1.6.2

./autogen.sh 

CPPFLAGS="-L/usr/local/lib -I/usr/local/include"    \
 ./configure    --enable-examples                   \
                --enable-debug                      \
                --enable-depends                    \
                --enable-maintainer-documentation   \
                --enable-shared-dependencies        \
                --enable-python
