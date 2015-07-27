#!/bin/sh

PORT=5000
DEV_DIR=dev
PID_DIR=$DEV_DIR/pids
LOG_DIR=$DEV_DIR/logs

mkdir -p $PID_DIR
mkdir -p $LOG_DIR

case $1 in
  run )
    lsc -wbco build/js src >> $LOG_DIR/lsc.log 2>&1 &
    echo $! > $PID_DIR/lsc.pid
    ruby -run -e httpd . -p $PORT >> $LOG_DIR/httpd.log 2>&1 &
    echo $! > $PID_DIR/httpd.pid
    sass --watch css:build/css >> $LOG_DIR/sass.log 2>&1 &
    echo $! > $PID_DIR/sass.pid
    ;;
  kill )
    kill `cat $PID_DIR/lsc.pid`
    kill `cat $PID_DIR/httpd.pid`
    kill `cat $PID_DIR/sass.pid`
    ;;
  tail )
    tail -f $LOG_DIR/lsc.log $LOG_DIR/httpd.log $LOG_DIR/sass.log
esac
