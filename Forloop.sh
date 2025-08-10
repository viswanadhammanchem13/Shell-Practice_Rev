#!/bin/bash
for i in {1..100}
do 
    echo $i
    if (( i % 2 == 0 ))
    then
        echo " $i"
    else
        echo " not even"
    fi
done
