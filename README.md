### openjdk:8-jre-alpine
docker run -itd openjdk:8-jre-alpine

### Jira Software
1. Open terminal and hit following command
docker run -d -p 8080:8080 atlassian/jira-software:latest

2. Open following URL with your browser
http://localhost:8080

### Confluence
1. Open terminal and hit following command
docker run -d -p 8090:8090 atlassian/confluence-server:latest

2. Open following URL with your browser
http://localhost:8090

### Gitlab
docker run -itd -p 8081:80 gitlab-ce:latest
http://localhost:8081
