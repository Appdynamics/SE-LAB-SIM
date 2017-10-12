#!/bin/bash

while /bin/true; do
        curl $1:8080 >/dev/null 2>&1 &
        sleep 1
done
