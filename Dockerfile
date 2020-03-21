FROM debian:buster-slim
LABEL maintainer "staf wagemakers <staf@wagemakers.be>"

RUN groupadd debian-tor -g 5000101
RUN useradd debian-tor -u 5000101 -d /var/lib/tor -s /bin/false -g debian-tor

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install --no-install-recommends tor -y

USER debian-tor 

COPY torrc /etc/tor/torrc
EXPOSE 9050
ENTRYPOINT ["tor","-f","/etc/tor/torrc"]
