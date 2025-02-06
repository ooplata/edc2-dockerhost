#!/bin/sh

cd /benchmark/benchmark-scripts

echo "Lenguaje | Tiempo (ms)" > results.txt

for dir in JavaScript Go; do
    echo "Ejecutando $dir..."
    cd $dir
    docker build -t ${dir}_benchmark .
    tiempo=$(docker run --rm ${dir}_benchmark)
    echo "$dir | $tiempo" >> ../results.txt
    cd ..
done

cat results.txt
