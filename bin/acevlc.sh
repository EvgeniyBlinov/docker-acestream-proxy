#!/bin/bash

ACE_URL="$1"
[ -z "$ACE_URL" ] && {
    echo 'Acestream url is undefined!' &&
    exit 1
}
ACE_ID=`echo "$ACE_URL"|sed 's!acestream://!!'`
[ -z "$ACE_ID" ] && {
    echo 'Acestream ID is undefined!' &&
    exit 1
}
URL="http://127.0.0.1:8000/pid/${ACE_ID}/stream.mp4"

/usr/bin/qvlc "$URL"
