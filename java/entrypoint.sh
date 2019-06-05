#!/bin/sh

echo "entrypoint.sh args: $@"

exec /usr/bin/java -Xmx2g -Xms2g -Djava.security.egd=file:/dev/urandom -jar /home/xietaojie/spring-app.jar --spring.config.location=/home/xietaojie/config/ $@%
