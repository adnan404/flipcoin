##!/bin/bash -x
t=0
h=0

until [ $h -eq 21 ] || [ $t -eq 21 ]
do
a=$(( RANDOM%2 ))

if [ $a -eq 0 ]
then
        ((h++))
        if [ $h -eq 21 ]
        then
                        if [ $(( h-t )) -le 2 ]
                        then
                                echo "its a tie"
                                break
                        fi


                echo "head wins"
        fi

else
        ((t++))
        if [ $t -eq 21 ]
        then
                if [ $(( t-h )) -le 2 ] 
                then
                        echo "its a tie"
                        break
                fi


        echo "tail wins"
        fi
fi
done

echo "head="$h"and tail="$t


