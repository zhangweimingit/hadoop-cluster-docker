#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"

g++ -o mapperC src/wordcount_map.cpp
g++ -o reduceC src/wordcount_reduce.cpp

docker build -t wmzhang/hadoop:1.0 .

echo ""