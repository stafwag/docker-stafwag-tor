#!/bin/sh

docker run -d --name mytor --rm -p 127.0.0.1:9050:9050 stafwag/tor
