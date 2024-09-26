# docker-baseimage

base 镜像（fat container 类似 [PouchContainer](https://github.com/AliyunContainerService/pouch)）:
- 使用 s6 进程管理工具。使用 [skaware][just-containers/skaware] 容器化**静态编译** s6
- 使用 sshd（安全风险）
- rootless 运行 

java 镜像：
- 支持 jvm-sandbox 插件，通过环境变量启动

## Directory Structure

```shell
docker-baseimage
|-- base
|   `-- rootfs
|       |-- etc
|       |   |-- s6
|       |   |   |-- app
|       |   |   `-- sshd
|       |   `-- yum.repos.d
|       `-- root
|-- examples
|   |-- ffmpeg
|   |-- java
|   `-- python
|-- java
|   |-- etc
|   |   `-- s6
|   |       `-- app
|   `-- sandbox-agent-config
|-- nodejs
`-- python
```

## Caveats
- 不推荐使用 alpine linux 作为基础镜像，musl libc 有许多[问题存在][ttys3 容器基础镜像的选择]。
- 使用 static binaries。例如: `ffmpeg`
- APT 安装添加 `--no-install-recommends` [减少镜像大小][apt instanll减少镜像大小]

## Inspecting

```shell
dive 131f24102f9ebc5fb2e4b024f97 --source=docker
```

## Todo
- 使用 `rootfs` 目录命名
- 使用 action matrix 编译 s6(multi job)

## Reference
- [jprjr s6 ubuntu](https://github.com/jprjr/docker-ubuntu-stack/tree/master)
- [jprjr s6 debian](https://github.com/jprjr/docker-debian-stack/blob/base-wheezy/README.md)
- [jprjr Docker and S6](https://web.archive.org/web/20160304021857/http://blog.tutum.co/2014/12/02/docker-and-s6-my-new-favorite-process-supervisor/)
- [Phusion Docker image](https://github.com/phusion/baseimage-docker)
- https://www.brendangregg.com/blog/2016-07-13/llnode-nodejs-memory-leak-analysis.html
- https://developer.ibm.com/articles/explore-nodejs-core-dumps-using-the-llnode-plugin-for-lldb/
- [阿里巴巴 如何打造百万级规模的容器技术](https://events19.linuxfoundation.cn/wp-content/uploads/2017/11/How-to-Build-Container-Technology-at-Millions-Scale-in-Alibaba_Hongliang-Sun.pdf)
- [docker-alpine-s6](https://github.com/crazy-max/docker-alpine-s6)
- [bitnami container](https://github.com/bitnami/containers)

[just-containers/skaware]: https://github.com/just-containers/skaware
[ttys3 容器基础镜像的选择]: https://ttys3.dev/blog/do-not-use-alpine-in-production-environment
[apt instanll减少镜像大小]: https://ubuntu.com/blog/we-reduced-our-docker-images-by-60-with-no-install-recommends