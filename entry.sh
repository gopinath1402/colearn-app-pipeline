#!/bin/sh
set -e

rm -f /weby/tmp/pids/server.pid

rake data:create
rake data:schema:load
rake data:migrate

exec "$@"
