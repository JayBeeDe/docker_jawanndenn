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
	maxVotesPerPollArg="--max-polls $maxVotesPerPoll"
fi

cmd="/root/.local/bin/jawanndenn --port 80 --host 0.0.0.0 ${urlPrefixArg} ${maxPollsArg} ${maxVotesPerPollArg}"

sed -i "s|^\s*command.*$|command=${cmd}|g" /etc/supervisord.conf

exec "$@"