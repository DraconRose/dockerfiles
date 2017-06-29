#!/bin/sh
set -e

join_serf.sh

if [ -e '/usr/local/bin/include.sh' ]; then
	source /usr/local/bin/include.sh
fi

if [ -e '/usr/local/bin/intermediate.sh' ]; then
	/usr/local/bin/intermediate.sh
fi

exec "$@"
