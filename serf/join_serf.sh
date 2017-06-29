#!/bin/sh
if [ -z ${SERF_DISCOVER} ]; then
	SERF_DISCOVER="cluster"
fi

if [ -z ${SERF_ADVERTISE} ]; then
	SERF_ADVERTISE=$(hostname -i | tr ' ' '\n' | sort | head -n1)
fi

serf agent -advertise=${SERF_ADVERTISE} -discover=${SERF_DISCOVER} &
