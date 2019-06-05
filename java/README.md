# 镜像说明

## 1. Dockerfile
### 1.1 需要外部依赖
* 依赖 MySQL 服务

### 1.2 暴露端口
* 8080

### 1.3 挂载日志目录
/home/xietaojie/logs/

### 1.4 环境变量说明
- MYSQL_HOST(必填):
- MYSQL_PORT(选填)：默认 3306

## 2. 构建镜像
```
docker build --build-arg VERSION=1.2.3 -t spring-app:${VERSION} .

```
> 参数说明: VERSION 获取包路径中的版本

## 3. 运行示例
```
docker run -itd --name test -p 8080:8080 \
                    -v /tmp/logs:/home/xietaojie/logs \
                    -e MYSQL_HOST=host.mysql \
                    spring-app:1.2.3
```
