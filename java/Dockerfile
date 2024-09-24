FROM stringang/centos-s6

RUN mkdir -p /opt/example/soft/ && \
    mkdir -p /appruntime/java/

# 配置 java
ADD jdk-8u251-linux-x64.tar.gz /opt/example/soft/
ENV JAVA_HOME=/opt/example/soft/jdk1.8.0_251

ENV PATH=${JAVA_HOME}/bin:${PATH}

WORKDIR /appruntime/java/${APP_NAME}

ENV APP_RUN_ARGS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=2 -Dfile.encoding=UTF-8"

COPY rootfs /
COPY sandbox-agent-config/ /appruntime/java/


