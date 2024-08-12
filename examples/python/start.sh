#!/bin/bash

cd /appruntime/python/${APP_NAME}

_online(){
    echo "online donoting"

}

_offline(){
    echo "offline donoting"
}


start(){
    echo "[INFO] begin start application"
    python /appruntime/python/${APP_NAME}/db_migrate.py db upgrade || {
        echo "[ERROR] db upgrade error"
        exit 1
    }
    python /appruntime/python/${APP_NAME}/flask_app.py
    echo "[INFO] start application done"
    echo "[INFO] begin online"
    _online
    echo "[INFO] online done"
}


stop(){
    _offline
    pids=`ps -ef | grep -v grep | grep python | grep "/appruntime/python/${APP_NAME}"`
    echo "[INFO] stop application ${pids}"
    kill -15 ${pids}
    echo "[INFO] stop application done"
}


restart(){
    stop
    start
}

check(){
    echo

}


case $1 in
    start | *  )
        start
    ;;
    stop )
        stop
    ;;
    restart )
        stop
        start
    ;;
    check )
        check
    ;;
esac
