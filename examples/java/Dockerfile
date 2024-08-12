# java 业务镜像模版
FROM stringang/java_base
# 应用名
ARG APP_NAME
# 执行的Binary名字
ARG APP_BIN
# 环境tag 类似 dev|daily|development|pro|production
ARG ENV_TYPE
# 需要COPY打到镜像的内容
ARG ARCHIVE

# 如需重定义参数，重新定义该值
# APP_RUN_ARGS

ENV APP_NAME=${APP_NAME} APP_BIN=${APP_BIN} ENV_TYPE=${ENV_TYPE}

COPY ${ARCHIVE} /appruntime/java/${APP_NAME}/
