```bash
docker build -t my-coder -f Dockerfile.patch .

port=37$(($RANDOM%100+100))
echo "port is: $port"
docker run -d \
  --name=code-server$port \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e PASSWORD=password \
  -e SUDO_PASSWORD=password \
  -e DEFAULT_WORKSPACE=/config/workspace \
  -e CODER_GIT_CONFIG=http://gitea.x.cool/gitea_admin/docker-code-server_pr1.git \
  -p $port:8443 \
  --restart unless-stopped \
  -v /Users/huangzheng/Container/vscode-server/vsix:/vsix/ \
  my-coder
  # -e CODER_GIT_CONFIG=http://gitea.x.cool/Re0/docker-code-server.git \
```
