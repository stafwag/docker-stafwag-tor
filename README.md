# docker-stafwag-tor

```Dockerfile``` to run tor inside a docker container.
The tor daemon will run as the debian-tor user. The uid/gid is mapped
5000101.

## Installation

### clone the git repo

```
$ git clone https://github.com/stafwag/docker-stafwag-tor.git
$ cd docker-stafwag-tor
```

### Update torrc

The default config is configured to run tor as a socks proxy with  
```SocksPort``` set to ```0.0.0.0:9050```.

If you want to create a tor bridge, relay or exit node, you'll to update the configure and expose the port.

```
$ vi torrc 
```

### Build the image

```
$ docker build -t stafwag/tor . 
```

## Run

Execute the run shell script.

```
$ ./run.sh
```

Or run the docker command:

```
docker run -d --name mytor --rm -p 127.0.0.1:9050:9050 stafwag/tor
```

***Have fun***
