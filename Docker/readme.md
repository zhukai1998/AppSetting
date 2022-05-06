
`brew install --cask docker`

## dangling images
- build 自己的 docker 镜像的时候，有时会遇到用一个甚至多个中间层镜像，这会一定程度上减少最终打包出来 docker 镜像的大小，但是会产生一些tag 为 none 的无用镜像，也称为悬挂镜像 `dangling images`
- 列出所有的 dangling images:
```
docker images -f "dangling=true"
```

- 删除所有的 dangling images：
```
docker rmi $(docker images -f "dangling=true" -q)
```

## docker 资源清理
```
docker container prune # 删除所有退出状态的容器
docker volume prune # 删除未被使用的数据卷
docker image prune # 删除 dangling 或所有未被使用的镜像

docker system prune #删除已停止的容器、dangling 镜像、未被容器引用的 network 和构建过程中的 cache
# 安全起见，这个命令默认不会删除那些未被任何容器引用的数据卷，如果需要同时删除这些数据卷，你需要显式的指定 --volumns 参数
docker system prune --all --force --volumns #这次不仅会删除数据卷，而且连确认的过程都没有了！注意，使用 --all 参数后会删除所有未被引用的镜像而不仅仅是 dangling 镜像
```




# docker
- 运行容器：`docker run -itd -p 6379:6379 --name redis-test redis`
- 通过redis-cli链接测试使用redis服务：
```
docker exec -it redis-test /bin/bash
redis-cli
set test 1
```

# 创建容器时设置自启动
```shell
docker run -d --restart=always --name 设置容器名 使用的镜像

（上面命令  --name后面两个参数根据实际情况自行修改）
 --restart具体参数值详细信息：
       no　　　　　　　　容器退出时，不重启容器；
       on-failure　　  只有在非0状态退出时才重新启动容器；
       always　　　　　 无论退出状态是如何，都重启容器；
```

# 修改已有容器，使用update
```shell
docker update --restart=always ${容器ID(或者容器名)}
```

# docker
- 运行容器：`docker run -itd --name redis-test -p 6379:6379 redis`
- 通过redis-cli链接测试使用redis服务：
```
docker exec -it redis-test /bin/bash
redis-cli
set test 1
```


https://segmentfault.com/a/1190000040443213?sort=votes
