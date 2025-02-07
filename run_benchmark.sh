#!/bin/sh

cd /benchmark/edc2-dockerbench

git pull

echo "Lenguaje | Tiempo (ms)" > results.txt

for dir in go javascript; do
    echo "Ejecutando $dir..."
    cd $dir
    docker build -t ${dir}_benchmark .
    tiempo=$(docker run --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock ${dir}_benchmark)
    echo "$dir | $tiempo" >> ../results.txt
    cd ..
done

cat results.txt
