#!/usr/bin/env sh


result=${PWD##*/}

docker build -t $result .
