```bash
export DOCKER_BUILDKIT=1; docker build -t my-coder -f Dockerfile.patch .
# docker push hzgood/my-coder

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

1. 通过dockerfile.patch 来对code-server进行修改
2. 引入了 vsix ,以及 CODER_GIT_CONFIG,
3. root文件夹, 更新了
* sources.list
* bin
  install-zplug
  install-extension
  clone-vscode-config
* run
启动时先默认是从 /config 开始的
install-zplug&
clone-vscode-config (从github下载配置,如果CODER_GIT_CONFIG为空的话.)

vsix 应该是你主机上的保存下来的vsix.避免下载
* 30-config
设置权限.


