#!/bin/bash
set -e

if [ "$1" = 'stash' ]; then
  chown -R atlassian "$STASH_HOME"
  umask 0027
  exec gosu atlassian /opt/atlassian/bin/start-stash.sh -fg
fi

exec "$@"
