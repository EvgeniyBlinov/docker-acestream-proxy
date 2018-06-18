#!/bin/bash
SCRIPT_PATH=`dirname $0`
ABSOLUTE_PATH=`readlink -m ${SCRIPT_PATH}`


sudo docker run \
    -v $ABSOLUTE_PATH/etc/supervisor/conf.d:/etc/supervisor/conf.d \
    -p 8000:8000 \
    -p 62062:62062 \
    -t ikatson/aceproxy
