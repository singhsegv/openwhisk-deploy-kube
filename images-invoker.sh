#!/bin/bash

# ["openwhisk/invoker"]="ef725a6"

# Declare image names and tags
declare -A images
images=(
  ["openwhisk/invoker"]="6b1c048"
  ["busybox"]="1.37"
)

# Pull images
for image in "${!images[@]}"; do
  tag="${images[$image]}"
  echo "Pulling image: $image:$tag"
  docker pull "$image:$tag"
done
