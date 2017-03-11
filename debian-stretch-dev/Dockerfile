FROM debian:stretch
ARG debian_mirror=deb.debian.org

RUN sed -r -i -e s/deb.debian.org/$debian_mirror/ /etc/apt/sources.list \
 && sed -r -i -e 's/main$/main contrib non-free/g' /etc/apt/sources.list \
 && sed -r -n -e 's/^deb /deb-src /p' /etc/apt/sources.list >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y --force-yes \
      build-essential \
      git

WORKDIR /root
CMD [ "/bin/bash", "-l" ]
