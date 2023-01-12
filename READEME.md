```bash
docker compose create
# wait for a long time
tag=`date +"%Y-%m-%d-%H%M%S"`
docker export --output="code-server.tar" docker-code-server-code-server-1 &&gzip code-server.tar code-server-$tag.tar.gz
# you get a image pack
# In future, you can import this image:
gzip -dk code-server-$tag.tar.gz && \
    docker import code-server-$tag.tar mycode-server:latest
```