# 说明
- netty是一个udp测试镜像，默认端口为9010，使用netcat工具访问后，再输入任意之，容器会返回容器当前的时间

# 编译
- 可以使用当前Dockerfile文件进行编译，也可以使用已编译的镜像，dockerhub地址见右侧：

# 测试
- 容器启动后，开9010端口，如
docker run -tid --name="udp" -p 9010:9010 netty
- 容器启动成功后使用netcat访问，命令格式如：nc -u IP 端口
如 nc -u 172.168.0.2 9010

