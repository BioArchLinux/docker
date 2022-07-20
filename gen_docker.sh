#!/bin/bash

docker build -t bioarchlinux:$(date "+%Y%m%d") .
docker tag bioarchlinux:$(date "+%Y%m%d") bioarchlinux/bioarchlinux:$(date "+%Y%m%d")
docker tag bioarchlinux:$(date "+%Y%m%d") bioarchlinux/bioarchlinux:latest
docker push bioarchlinux/bioarchlinux -a

docker rmi --force $(docker images -q)
