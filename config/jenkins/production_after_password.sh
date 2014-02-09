#!/bin/sh
bundle exec rake db:migrate RAILS_ENV=production
mkdir -p ${WORKSPACE}/tmp/pids
mkdir ${WORKSPACE}/tmp/sockets
mkdir ${WORKSPACE}/tmp/cache
mkdir ${WORKSPACE}/tmp/sessions
NAME="Unicorn"
ENV=production
ROOT_DIR="${WORKSPACE}/photowander"
PID="${ROOT_DIR}/tmp/pids/unicorn.pid"
CONF="${ROOT_DIR}/config/unicorn.conf.rb"
CMD="/home/pyar6329/.rbenv/versions/2.0.0-p353/bin/bundle exec ${ROOT_DIR}/.bundle/ruby/2.0.0/bin/unicorn -c ${CONF} -E ${ENV} -D >/dev/null 2>&1 &"
if [ -e $PID ]; then
    echo "stop $NAME"
    kill -QUIT `cat ${PID}`
    rm "${PID}"
fi
cd $ROOT_DIR
$CMD
echo "start $NAME"
