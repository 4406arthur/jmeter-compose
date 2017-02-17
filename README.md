# README #

this repo is for huge load tesing task.

use docker-compose scale slave node achieve distributed load tesing.


### How do I get set up? ###

* docker-compose up -d
* docker-compose scale slave
* docker exec -it "MASTER's CONTAINER ID" /bin/bash (into master node run non-gui jmeter)

### TODO ###

* Volume mount.
* Jmeter Plugin.