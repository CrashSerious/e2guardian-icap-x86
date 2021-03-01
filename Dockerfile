FROM debian:buster
MAINTAINER Justin Schwartzbeck <justinmschw@gmail.com>

ARG BUILD_DATE
ENV OS debian

RUN apt-get update

# Start e2guardian
RUN apt install -y e2guardian

RUN rm -rf /var/lib/apt/lists/*

COPY e2guardian.conf /etc/e2guardian/e2guardian.conf
COPY e2guardianf1.conf /etc/e2guardian/e2guardian.conf

EXPOSE 1344

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
