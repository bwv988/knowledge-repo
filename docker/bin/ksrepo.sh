#!/bin/sh
# FIXME: This needs further work and documentation.

SVC=""
COMPOSE_ROOT="docker-compose"
COMPOSE_FILE="docker-compose.yml"
COMPOSE_PATH="${COMPOSE_ROOT}/${COMPOSE_FILE}"
COMPOSE_CMD="docker-compose -f ${COMPOSE_PATH}"

case "$1" in
  start)
    log_begin_msg "Starting ${SVC}..."
    exec ${COMPOSE_CMD} up
    log_end_msg $?
    ;;
  stop)
    log_begin_msg "Stopping ${SVC}..."
    exec ${COMPOSE_CMD} down
    log_end_msg $?
    ;;
  *)
    log_success_msg "Usage: ./sandbox.sh {start|stop}"
    exit 1
esac
