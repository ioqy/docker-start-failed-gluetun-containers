#!/usr/bin/env bash

# Lock script to prevent parallel execution
[ "${FLOCKER}" != "$0" ] && exec env FLOCKER="$0" flock -en "$0" "$0" "$@" || :

docker ps --all --format '{{ .Names }}' --filter 'status=exited' | xargs --no-run-if-empty --max-lines=1 sh -c 'docker inspect $0 | (grep --quiet "cannot join network of a non running container" && docker start $0)'
