#!/bin/sh
set -e

rm -f /weby/tmp/pids/server.pid

rake db:create && rake db:schema:load && rake db:migrate

exec "$@"
