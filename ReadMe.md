# 起動コマンド

```
docker volume create docker-training-java
docker build -t java-1.0.2 .
docker run --name java-1.0.2 -p 8080:8080 --mount type=bind,source="$(pwd)"/demo,target=/app java-1.0.2
```
