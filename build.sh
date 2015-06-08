#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Usage: $0 <clienttype[hadoop or hops]>"
	exit
fi

mvn clean install -P$1
cd target
mkdir mstress
cp ../*.py mstress/
cp ../README mstress/
cp qfs-mstress-1.0-SNAPSHOT-jar-with-dependencies.jar mstress/
zip -r mstress.zip mstress/
