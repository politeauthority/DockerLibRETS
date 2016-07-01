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
    python-devel; yum clean all;
ADD setup.sh /root/setup.sh
RUN /root/setup.sh