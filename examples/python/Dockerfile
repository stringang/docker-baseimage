FROM stringang/python_base

# 应用名
ARG APP_NAME
# 执行的Binary名字
ARG APP_BIN
# 环境名字
ARG ENV_TYPE
# 需要COPY打到镜像的内容
ARG ARCHIVE

ENV APP_NAME=${APP_NAME} APP_BIN=${APP_BIN} ENV_TYPE=${ENV_TYPE}

COPY start.sh /appruntime/python/

RUN mkdir -p /appruntime/python/${APP_NAME} && \
    cd /appruntime/python/${APP_NAME} && \
    mv /appruntime/python/requirements.txt /appruntime/python/${APP_NAME}/ && \
    pip install -r requirements.txt

COPY ${ARCHIVE} /appruntime/python/${APP_NAME}/
