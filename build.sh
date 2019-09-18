#!/usr/bin/env bash
set -euo pipefail

base=kevinkjt2000/alpine-gcc
docker build -t ${base} .

gcc_version=$(docker run --rm -i ${base} g++ --version | awk '/Alpine/{print $NF}')
docker tag ${base} ${base}:${gcc_version}

docker push ${base}
docker push ${base}:${gcc_version}
