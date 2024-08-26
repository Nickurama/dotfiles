#!/bin/bash

COUNT=$(dunstctl count waiting)
ENABLED=""
DISABLED=""

if [ $COUNT != 0 ]
then
	DISABLED="   $COUNT"
fi

if dunstctl is-paused | grep -q "false"
then
	echo "<b>$ENABLED </b>"
else
	echo "<b>$DISABLED </b>"
fi
