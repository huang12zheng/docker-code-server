```
docker compose create
# wait for a long time
docker export --output="code-server-latest.tar" docker-code-server-code-server-1|gzip code-server-latest.tar code-server-latest.tar.gz
```

