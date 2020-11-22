#!/bin/sh
: "${urlPrefix:=/}"
: "${maxPolls:=1000}"
: "${maxVotesPerPoll:=40}"

urlPrefixArg=""
if [ "${urlPrefix}" != "/" ]; then
	urlPrefixArg="--url-prefix $urlPrefix"
fi
maxPollsArg=""
if [ "${maxPolls}" != "1000" ]; then
	maxPollsArg="--max-polls $maxPolls"
fi
maxVotesPerPollArg=""
if [ "${maxVotesPerPoll}" != "40" ]; then
	maxVotesPerPollArg="--max-votes-per-poll $maxVotesPerPoll"
fi

cmd="jawanndenn --port 80 --host 0.0.0.0 --database-sqlite3 /data/db.sql ${urlPrefixArg} ${maxPollsArg} ${maxVotesPerPollArg}"

sed -i "s|^\s*command.*$|command=${cmd}|g" /etc/supervisord.conf
echo "ALLOWED_HOSTS = '*'" >> /usr/local/lib/python3.9/site-packages/jawanndenn/settings.py

exec "$@"