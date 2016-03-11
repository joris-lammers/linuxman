FROM debian:latest
RUN apt-get -y update && \
    apt-get -y install man-db libc6-dev glibc-doc less libcap-dev
ENTRYPOINT ["man"]
