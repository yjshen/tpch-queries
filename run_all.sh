#!/bin/bash

for i in {1..2}
do
	./ori-spark-sql2 -f _workspace/q$i  1> _tout_right/$i.out  2> _terr_right/$i.err	
	echo "$i done"
done

