#!/bin/bash

# ["openwhisk/controller"]="ef725a6"
# ["openwhisk/scheduler"]="ef725a6"
# ["openwhisk/invoker"]="ef725a6"
# ["openwhisk/user-events"]="ef725a6"

# Declare image names and tags
declare -A images
images=(
  ["rajdeep1008/ow-utils"]="lala"
  ["zookeeper"]="3.4"
  ["wurstmeister/kafka"]="2.12-2.3.1"
  ["apache/couchdb"]="2.3"
  ["nginx"]="1.21.1"
  ["openwhisk/controller"]="6b1c048"
  ["openwhisk/scheduler"]="6b1c048"
  ["quay.io/coreos/etcd"]="v3.4.0"
  ["openwhisk/invoker"]="6b1c048"
  ["openwhisk/apigateway"]="1.0.0"
  ["redis"]="4.0"
  ["openwhisk/user-events"]="6b1c048"
  ["prom/prometheus"]="v2.14.0"
  ["grafana/grafana"]="6.3.0"
  ["openwhisk/alarmprovider"]="2.3.0"
  ["openwhisk/kafkaprovider"]="2.1.0"
  ["busybox"]="1.37"
  ["docker.elastic.co/elasticsearch/elasticsearch"]="6.7.2"
)

# Pull images
for image in "${!images[@]}"; do
  tag="${images[$image]}"
  echo "Pulling image: $image:$tag"
  docker pull "$image:$tag"
done
