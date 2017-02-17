# README #

this repo is for huge load tesing task.

use docker-compose scale slave node achieve distributed load tesing.


[Tutorial ref](http://www.testautomationguru.com/jmeter-scaling-out-load-servers-using-docker-compose-in-distributed-load-testing/)

###Requirement###

* basic understand docker-compse
* ApacheJmeter(3.1) non-gui mode


### How do I get set up? ###

* docker-compose up -d
* docker-compose scale slave
* docker exec -it "MASTER's CONTAINER ID" /bin/bash (into master node run non-gui jmeter)

### Visualize data (.jtl)###

[Here is good online tools](https://sense.blazemeter.com/gui/)
