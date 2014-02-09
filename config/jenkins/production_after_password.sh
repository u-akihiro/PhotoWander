#!/bin/sh
bundle exec rake db:migrate RAILS_ENV=production
NAME="Unicorn"
ENV=production
ROOT_DIR="${WORKSPACE}/photowander"
PID="${ROOT_DIR}/tmp/pids/unicorn.pid"
CONF="${ROOT_DIR}/config/unicorn.conf.rb"
CMD="sudo /home/pyar6329/.rbenv/shims/bundle exec ${ROOT_DIR}/.bundle/ruby/2.0.0/bin/unicorn -c ${CONF} -E ${ENV} -D >/dev/null 2>&1 &"
if [ -e $PID ]; then
    echo "stop $NAME"
    sudo kill -QUIT `cat ${PID}`
    sudo rm "${PID}"
fi
cd $ROOT_DIR
$CMD
echo "start $NAME"
