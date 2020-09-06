创建 network：`docker network create workflow --driver bridge`
> 如果创建时提示“non-overlapping IPv4 address pool among the defaults”， 请执行route del -net 172.16.0.0 netmask 255.240.0.0 后重试

编辑 `hosts` 文件，添加以下内容
```
127.0.0.1 jira.internal
127.0.0.1 confluence.internal
127.0.0.1 gitlab.internal
```

直接运行：`docker-compose up -d`
 