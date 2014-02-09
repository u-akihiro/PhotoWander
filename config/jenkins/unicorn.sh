#!/bin/sh
# linux service
# add to /etc/init.d/unicorn

NAME="Unicorn"
ENV=production

ROOT_DIR="/home/pyar6329/.jenkins/workspace/PhotoWander_production"

PID="${ROOT_DIR}/tmp/pids/unicorn.pid"
CONF="${ROOT_DIR}/config/unicorn.conf.rb"
CMD="/home/pyar6329/.rbenv/shims/bundle exec ${ROOT_DIR}/.bundle/ruby/2.0.0/bin/unicorn -c ${CONF} -E ${ENV} -D"

start()
{
  if [ -e $PID ]; then
    echo "$NAME already started"
    exit 1
  fi
  echo "start $NAME"
  cd $ROOT_DIR
  $CMD
}

stop()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    exit 1
  fi
  echo "stop $NAME"
  kill -QUIT `cat ${PID}`
}

force_stop()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    exit 1
  fi
  echo "stop $NAME"
  kill -INT `cat ${PID}`
}

reload()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    start
    exit 0
  fi
  echo "reload $NAME"
  kill -HUP `cat ${PID}`
}

restart()
{
    stop
    # Unicorn が停止し切らない内に起動しようとしないように
    sleep 3
    start
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  force-stop)
    force_stop
    ;;
  reload)
    reload
    ;;
  restart)
    restart
    ;;
  *)
    echo "Syntax Error: release [start|stop|force-stop|reload|restart]"
    ;;
esac
