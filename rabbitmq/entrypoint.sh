#!/bin/bash
(sleep 5 ; \
    rabbitmqctl add_user admin admin ; \
    rabbitmqctl set_user_tags admin administrator ; \
    rabbitmqctl set_permissions -p / admin ".*" ".*" ".*") &
rabbitmq-server
