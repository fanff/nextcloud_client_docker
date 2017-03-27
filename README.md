
# Setup : 

* Build docker image with: 

    docker build -t nextcloudclient . 

* make a shared directory 

    mkdir -p /mnt/owncd/shared

* vim a file named "unsynced" in it. One line, one exclude, like:

    music
    Movies
    pR0n


* vim a runscript.sh like the example one. Fill in the gaps

* Run to sync, put in cron or something for automatic sync

