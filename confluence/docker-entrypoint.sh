#!/bin/bash
set -e

if [ "$1" = 'confluence' ]; then
  chown -R atlassian "$CONFLUENCE_HOME"
  umask 0027
  exec gosu atlassian /opt/atlassian/bin/start-confluence.sh -fg
fi

exec "$@"
