#!/bin/sh
yq e ".services.[].image" /Users/leelisker/yamls/listImages.yaml
DATA=$(yq e ".services.[].image" /Users/leelisker/yamls/listImages.yaml) 

for i in $DATA
do
  echo "data is $i"
  docker pull $i
done
