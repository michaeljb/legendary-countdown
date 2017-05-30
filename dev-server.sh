#!/bin/bash

case "$1" in
    start)
	docker-compose up --build dev
	;;

    stop)
	docker-compose stop dev
	;;

    restart)
	./dev-server.sh stop
	./dev-server.sh start
	;;

    attach)
	docker-compose exec dev /bin/bash
	;;

    *)
        echo $"Usage: $0 {start|stop|restart|attach}"
        exit 1

esac
