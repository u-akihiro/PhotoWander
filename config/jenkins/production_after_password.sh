#!/bin/sh
bundle exec rake db:migrate RAILS_ENV=production
mkdir -p ${WORKSPACE}/tmp/pids
mkdir ${WORKSPACE}/tmp/sockets
mkdir ${WORKSPACE}/tmp/cache
mkdir ${WORKSPACE}/tmp/sessions
echo "2.0.0-p353" > ${WORKSPACE}/.ruby-version
NAME="Unicorn"
ENV=production
ROOT_DIR="${WORKSPACE}"
PID="${ROOT_DIR}/tmp/pids/unicorn.pid"
CONF="${ROOT_DIR}/config/unicorn.conf.rb"
CMD="bundle exec unicorn -c ${CONF} -E ${ENV}"
if [ -e $PID ]; then
    echo "stop $NAME"
    kill -QUIT `cat ${PID}`
    rm "${PID}"
fi
cd $ROOT_DIR
$CMD
echo "start $NAME"
