#! /bin/bash

WORKDIR=$1
USERNAME=$2
APPNAME=$3
VERSION=$4
REGISTRY=$5
LOGFILE=$6

cd $WORKDIR

cp -r ../../tpls/dir .

docker build -t $USERNAME/$APPNAME:$VERSION . >> $LOGFILE
docker tag $USERNAME/$APPNAME:$VERSION $REGISTRY/$USERNAME/$APPNAME:$VERSION >> $LOGFILE
docker push $REGISTRY/$USERNAME/$APPNAME:$VERSION >> $LOGFILE
