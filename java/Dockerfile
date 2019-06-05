FROM openjdk:8-jre-alpine
LABEL maintainer="xietaojie@foxmail.com"

ARG VERSION=1.0.0

WORKDIR /home/xietaojie

COPY config/ ./config
COPY entrypoint.sh ./

RUN addgroup -S usergroup \
  && adduser -S xietaojie -G usergroup \
  && mkdir -p ./logs \
  && chmod +x ./entrypoint.sh

VOLUME ["./logs"]

ENV MYSQL_HOST localhost \
  MYSQL_PORT 3306

# Copy or download jar file to your path, like
# ADD http://test.net/nexus/content/repositories/releases/spring-app/${VERSION}/spring-app-${VERSION}.jar ./spring-app.jar

RUN chown -R xietaojie:usergroup ./
USER xietaojie

EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]

CMD ["--mysql.host=${MYSQL_HOST}", "--mysql.port=${MYSQL_PORT}"]
