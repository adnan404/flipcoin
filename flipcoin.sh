


#!/bin/bash -x
t=0
h=0
n=0
while [ $n -le 5 ]
do
a=$(( RANDOM%2 ))

if [ $a -eq 0 ]
then
        ((h++))
        if [ $h -eq 3 ]
        then
                echo "head wins"
        fi

else
        ((t++))
        if [ $t -eq 3 ]
        then
        echo "tail wins"
        fi
fi
((n++))
done

