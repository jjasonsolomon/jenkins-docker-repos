#!/bin/bash
opt=$1;

if [ "$opt" = 1 ]; then
echo "Going inside jenkins"
docker exec -ti jenkins bash

elif [ "$opt" = 2 ]; then
echo "Going inside remote-host"
docker exec -ti remote-host bash
elif [ "$opt" = 3 ]; then
echo "Going inside mysql"
docker exec -ti mysql bash

elif [ "$opt" = 4 ]; then
echo "Going inside web"
docker exec -ti web bash
else
echo "Arguments Missing"
echo "Please Choose Arguments"
echo "Choose Container"
echo "1.Jenkins"
echo "2.Remote-host"
echo "3.Mysql"
fi

