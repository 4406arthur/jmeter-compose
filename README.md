# README

this repo is for huge load tesing task.

use docker swarm mode achieve distributed load tesing.

[Tutorial ref](http://www.testautomationguru.com/jmeter-scaling-out-load-servers-using-docker-compose-in-distributed-load-testing/)

### Requirement

* basic understand docker-swarm(docker version 1.13)
* ApacheJmeter(3.1) non-gui mode


### How do I get set up? ###

* docker stack deploy -c docker-compose.yml jmeter
* docker exec -it "MASTER's CONTAINER ID" /bin/bash (into master node run non-gui jmeter)

### Visualize data (.jtl) ###

[Here is good online tools](https://sense.blazemeter.com/gui/)

