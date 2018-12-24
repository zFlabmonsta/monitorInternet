#!/bin/sh

while true
do
    date_now=`date`
    ping_now=`ping -c1 8.8.8.8|egrep "time"`
    file_size=`ls -l internetConnection.txt | cut -d' ' -f5`
    if test $file_size -gt 1000000000
    then
        echo "$date_now" > internetConnection.txt & echo "$date_now"
    else
        echo "$date_now" >> internetConnection.txt & echo "$date_now"
        echo "$ping_now" >> internetConnection.txt & echo "$ping_now"
    fi
    sleep 30s
    echo ""
done
