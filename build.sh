#!/bin/bash

git clone git@github.com:Keriew/augustus.git augustus

mkdir build

docker build -t augustus-build .

docker run -it --rm -v $PWD/augustus:/usr/src -v $PWD/build:/usr/src/build -w /usr/src/build augustus-build cmake ..
docker run -it --rm -v $PWD/augustus:/usr/src -v $PWD/build:/usr/src/build -w /usr/src/build augustus-build make

