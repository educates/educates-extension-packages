#!/bin/bash

# Allow this script to fail without failing a build
set +e

vendir sync
./fix-permissions.sh

DIRS=$(find packages -mindepth 2 -maxdepth 2 -type d -print)
for DIR in ${DIRS[@]}; do
  PACKAGE=$(echo $DIR | awk -F"/" '{ print $(NF-1)":"$NF }')
  echo "Pushing package $PACKAGE from $DIR into localhost:5001/$PACKAGE"
  imgpkg push -i localhost:5001/$PACKAGE -f $DIR
done