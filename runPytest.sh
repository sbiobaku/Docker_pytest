#!/usr/bin/env zsh

set -e

if [ $# -ne 1 ]; then
    echo "Usage: ./docker-run.sh <SUITE>"
    exit 1
fi

SUITE=$1
PYTESTTAG="$SUITE-$(date +%s)"
IMAGE_NAME="$(docker images -f reference='saifb/pytest:latest' -q)"
echo $PYTESTTAG
docker run -v ./$SUITE:/etc/workdir  -e PTAG=$PYTESTTAG $IMAGE_NAME 