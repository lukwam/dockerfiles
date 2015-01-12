#!/bin/sh

if [ $# -lt 1 ] ; then
	echo "USAGE: `basename $0` domain"
	exit
fi

domain=$1

shift

env OAUTHFILE=oauth/$domain python /data/gam/gam.py $*

