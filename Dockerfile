FROM ubuntu:16.04
MAINTAINER fanf

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:nextcloud-devs/client
RUN apt-get install -y owncloud-client-cmd

VOLUME /mnt/shared

CMD "/bin/bash" "-c" "cd /mnt/shared && mkdir -p data && owncloudcmd --user $USR --password $PASS --exclude unsynced /mnt/shared/data $SRV"

