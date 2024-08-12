# docker-baseimage

base 镜像:
- 使用 s6 进程管理工具。使用 [skaware](https://github.com/just-containers/skaware) 容器化**静态编译** s6
- 使用 sshd（安全风险）

java 镜像：
- 支持 jvm-sandbox 插件，通过环境变量启动

```shell
docker-baseimage
|-- base # 基础 OS 镜像
|   |-- etc
|   |   |-- s6
|   |   |   |-- app
|   |   |   `-- sshd
|   |   `-- yum.repos.d
|   `-- root
|-- examples # 业务使用示例
|   |-- java
|   `-- python
|-- java # java 基础镜像
|   |-- etc
|   |   `-- s6
|   |       `-- app
|   `-- sandbox-agent-config
`-- nodejs # nodejs 基础镜像
```


## Reference
- [jprjr s6 ubuntu](https://github.com/jprjr/docker-ubuntu-stack/tree/master)
- [jprjr s6 debian](https://github.com/jprjr/docker-debian-stack/blob/base-wheezy/base/Dockerfile)
- [jprjr Docker and S6](https://web.archive.org/web/20160304021857/http://blog.tutum.co/2014/12/02/docker-and-s6-my-new-favorite-process-supervisor/)
- [Phusion Docker image](https://github.com/phusion/baseimage-docker)
- [ttys3 容器基础镜像的选择](https://ttys3.dev/blog/do-not-use-alpine-in-production-environment)
- https://www.brendangregg.com/blog/2016-07-13/llnode-nodejs-memory-leak-analysis.html
- https://developer.ibm.com/articles/explore-nodejs-core-dumps-using-the-llnode-plugin-for-lldb/