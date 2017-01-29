FROM debian:jessie

RUN apt-get update && \
apt-get -y install wget && \
echo 'deb http://www.rabbitmq.com/debian/ testing main' \
> /etc/apt/sources.list.d/rabbitmq.list && \
wget -O - https://www.rabbitmq.com/rabbitmq-release-signing-key.asc \
| apt-key add - && \
apt-get update && \
apt-get -y install rabbitmq-server

COPY entrypoint.sh /usr/local/bin/

RUN rabbitmq-plugins enable rabbitmq_management && \
service rabbitmq-server start && \
rabbitmqctl add_user admin admin && \
rabbitmqctl set_user_tags admin administrator && \
rabbitmqctl set_permissions -p / admin ".*" ".*" ".*" && \
rabbitmqctl list_users && \
chown rabbitmq:rabbitmq /usr/local/bin/entrypoint.sh && \
chmod u+x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

USER rabbitmq
