#!/usr/bin/env sh

cd..

result=${PWD##*/}

docker build -t $result .
