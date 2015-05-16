#!/bin/bash
for i in $(docker ps -a | grep "hour ago" | cut -f1 -d" "); do docker stop $i && docker rm $i; done
