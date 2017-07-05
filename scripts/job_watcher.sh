#!/bin/bash
# use this to run a shell script in the background and restart it if it fails

if [ ! -f $1 ] || [ -z $1 ] ; then
 echo "File $1 does not exists!"
 exit 0
fi

timestamp=$(date +%s)

NEWLINE=$'\n'
echo "[ $(date) ][ START ]: Start $1" >> "./$timestamp.log"
sh $1 2>> "./$timestamp.log" &
job_pid=$!

while [ 1 ] ; do

	if [ ! -d "/proc/$job_pid" ] ; then
        echo "[ $(date) ][ ERROR ]: Script is not running${NEWLINE}[ START ]: Start $1" >> "./$timestamp.log"
        sh $1 2>> "./$timestamp.log" &
        job_pid=$!
	fi

	sleep 30
done 2> /dev/null
