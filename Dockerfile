FROM centos:7
RUN yum install --assumeyes \
    emacs \
    wget \
    antlr-tool \
    autoconf \
    boost-devel \
    expat-devel \
    libcurl-devel \ 
    gcc-c++ \ 
    swig \ 
    make \
    cmake \
    python-devel; yum clean all;
ADD setup.sh /tmp/setup.sh
RUN /tmp/setup.sh