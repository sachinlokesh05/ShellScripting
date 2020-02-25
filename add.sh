#!/bin/bash -x
read -p "enter the a value: " a
read -p "enter the b value: " b
z=$(((($a+$((10+20))))+$b))
echo $z
