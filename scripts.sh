#!/bin/bash
docker_push() {
  docker login
  docker build -t mingqianye/lense:latest .
  docker push mingqianye/lense:latest
}

action=$1
${action}
