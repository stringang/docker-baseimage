# Java 应用镜像

默认启动 jmx_prometheus_javaagent 

## 参数说明

- APP_RUN_ARGS： 应用启动参数
- JVM_OPTS_PREFIX： JVM参数

## troubleshooting

- 配置 JVM DNS 缓存时间。`-Dnetworkaddress.cache.ttl=60 -Dsun.net.inetaddr.ttl=60` 
- 日志中文乱码。`-Dfile.encoding=UTF-8` 使用 `jinfo` 排查
