#!/usr/bin/env sh
modprobe nfsd

rm -fr /run/*
mkdir  /run/openrc
touch  /run/openrc/softlevel

openrc

exec "$@"
