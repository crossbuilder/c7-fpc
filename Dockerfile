FROM local/c7-sdk-base

MAINTAINER crossbuilder

RUN yum clean all ; \
	yum -y install subversion ; \
	yum clean all

RUN git clone https://github.com/crossbuilder/fpc.git ; source /opt/pkg/petalinux-v2016.1-final/settings.sh ; cd fpc ; ./install.sh ; cd .. ; rm -rf fpc

