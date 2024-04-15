# docker-baseimage

base 镜像:
- 使用 s6 进程管理工具。使用 [skaware](https://github.com/just-containers/skaware) 容器化编译 s6
- 使用 sshd

java 镜像：
- 支持 jvm-sandbox 插件，通过环境变量启动

## Reference
- https://github.com/jprjr/docker-ubuntu-stack/tree/master
- https://github.com/jprjr/docker-debian-stack/blob/base-wheezy/base/Dockerfile
- https://web.archive.org/web/20160304021857/http://blog.tutum.co/2014/12/02/docker-and-s6-my-new-favorite-process-supervisor/
- https://www.brendangregg.com/blog/2016-07-13/llnode-nodejs-memory-leak-analysis.html
- https://developer.ibm.com/articles/explore-nodejs-core-dumps-using-the-llnode-plugin-for-lldb/