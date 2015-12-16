# following 
#   https://github.com/boot2docker/boot2docker/blob/master/doc/BUILD.md#making-your-own-customised-boot2docker-iso

FROM boot2docker/boot2docker

# add docker-compose file
RUN mkdir -p $ROOTFS/data/docker-compose
ADD ./tmp/docker-compose.yml $ROOTFS/data/docker-compose/

# install the autorun script
ADD ./files/bootlocal.sh $ROOTFS/opt/bootlocal.sh
RUN chmod +x $ROOTFS/opt/bootlocal.sh

# install start_zen_bash
ADD ./files/start_zen_bash $ROOTFS/usr/local/bin/start_zen_bash
RUN chmod +x $ROOTFS/usr/local/bin/start_zen_bash

# install shell login scripts
RUN echo 'echo "Run \"start_zen_bash\" to enter the zen command line."' >> $ROOTFS/root/.profile
RUN mkdir -p $ROOTFS/home/docker/
RUN echo 'echo "Run \"start_zen_bash\" to enter the zen command line."' >> $ROOTFS/home/docker/.profile

# install docker-compose in the iso
RUN curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > "$ROOTFS/usr/local/bin/docker-compose"
RUN chmod +x "$ROOTFS/usr/local/bin/docker-compose"

# make the iso file and output it on start
#   https://github.com/boot2docker/boot2docker/blob/master/doc/BUILD.md
RUN echo "You need at least 2GB of free RAM."
RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]
