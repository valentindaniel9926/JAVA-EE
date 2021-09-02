#!/bin/sh
mvn clean package && docker build -t academy.learnprogramming/helloworld .
docker rm -f helloworld || true && docker run -d -p 8080:8080 -p 4848:4848 --name helloworld academy.learnprogramming/helloworld 
