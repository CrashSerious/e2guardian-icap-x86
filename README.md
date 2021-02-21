#e2guardian-icap-x86
======================
This is a docker container made for x86 that contains e2guardian to be configured as an ICAP server.
I am creating this docker image as part of a solution for a content filter with squid and e2guardian.

Baseimage
======================
debian:buster

### Quickstart 
```bash
docker run --name e2guardian -d \
  --publish 1344:1344 \
  --volume /path/to/e2gaurdian/lists:/etc/e2guardian/lists \
  jusschwa/e2guardian-icap-x86
```

