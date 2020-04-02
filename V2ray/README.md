# V2ray

# Vultr Centos 8
- 下载 wget
```
yum -y install wget
```

- 下载 v2ray
```
wget https://install.direct/go.sh
```

- 下载 zip
```
yum install -y zip unzip  
```

- 安装 v2ray
```
bash go.sh
```

- config.json 配置
```
查看 config.json
cat /etc/v2ray/config.json
修改 alterId
修改 levelId
```

- v2ray 设置
```
启动
systemctl start v2ray
开机自启
systemctl enable v2ray
```

- 防火墙设置
```
开放端口
firewall-cmd --zone=public --add-port=端口号/tcp --permanent
重启防火墙
firewall-cmd --reload
```

- 开启 bbr 加速
```
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
```

# AliYun Centos
- 修改登录欢迎语句
```
vim /etc/motd
```

- 卸载阿里云盾
```
bash -c "$(curl -sS https://raw.githubusercontent.com/FanhuaCloud/AliYunServicesClear/master/uninstall.sh)"
或者
bash uninstall.sh
reboot
```

- 修改登录欢迎语句
```
vim /etc/motd
```

- 修改登录欢迎语句
```
vim /etc/motd
```

- 修改登录欢迎语句
```
vim /etc/motd
```

- 修改登录欢迎语句
```
vim /etc/motd
```

- 修改登录欢迎语句
```
vim /etc/motd
```

- 修改登录欢迎语句
```
vim /etc/motd
```
