#!/bin/sh

(cat > Dockerfile <<EOF
FROM emorymerryman/base:0.0.0
MAINTAINER Emory Merryman emory.merryman@gmail.com
RUN ["/sbin/apk", "add", ${0}]
ENTRYPOINT [${1}]
CMD []
EOF
    ) &&
    true
