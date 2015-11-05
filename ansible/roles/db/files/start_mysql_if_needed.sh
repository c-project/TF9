#!/bin/bash

# list pids of mysql daemon without headers (option h) 
ps h -o pid -C mysqld
if [ $? -eq 1 ] ; then
  /usr/bin/mysqld_safe &
  sleep 3
else
	echo mysqld is already running
fi

