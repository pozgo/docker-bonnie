FROM alpine:3.5
# Bonnie++ Version can be found on offcial website of bonnie++
# http://www.coker.com.au/bonnie++/
ENV BONNIE_VERSION=1.03e \
    SHELL=/bin/bash

RUN \
  apk add --update bash g++ make perl && \
  cd /tmp && wget http://www.coker.com.au/bonnie++/bonnie++-${BONNIE_VERSION}.tgz && \
  tar xvf bonnie++-${BONNIE_VERSION}.tgz && cd bonnie++-${BONNIE_VERSION}/ && \
  ./configure && make && make install

CMD ['/usr/local/sbin/bonnie++']
