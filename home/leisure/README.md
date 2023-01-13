#### 欢迎使用 Leisure Linux 制作的 Alpine OS 无盘系统
#### 以下为您需要关注的几个要点：

  - 实现数据的备份的脚本是： /etc/init.d/lbu-backup，请根据您自己的情况修改该脚本
  - 系统停机时会关闭 sshd 进程，在 /etc/init.d/sshd 的 pre_stop 部分，调用了 lbu-backup
  - 备份可以使用 scp/rsync/ssh 等各种办法，但是需要 ssh-key 实现无密码登录，因此使用之前请用 root 执行：
    - ssh-keygen -t rsa -N ''
    - ssh-copy-id username@remotehost
  - 需要临时备份，可以在普通用户下运行 .b 命令，这个 alias 在 ~/.zshrc 里定义，请根据自己的情况修改
  - root 的口令为 LeisureLinux
  - 本账号 (leisure) 的口令为 leisurelinux

