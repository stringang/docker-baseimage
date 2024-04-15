#!/bin/bash

jacocoAgentPath="/opt/example/soft/jacoco"

if [ ! -d ${jacocoAgentPath} ]; then
    echo "创建目录 /opt/example/soft/jacoco"
    mkdir -p ${jacocoAgentPath}
fi

downLoadUrl=https://s3.example.com/bkb/jacoco-agent.tar
jacocoAgentFile=${jacocoAgentPath}/jacoco-agent.tar

echo "下载jacoco-agent.tar"

curl -s --connect-timeout 5 --retry 3 -o ${jacocoAgentFile} ${downLoadUrl}

if [[ "$?" = "0" && -e "${jacocoAgentFile}" ]]; then
    echo "下载jacoco-agent.tar完成"
    tar -xvf ${jacocoAgentFile} -C ${jacocoAgentPath}
    echo "解压jacoco-agent.tar完成"
else
    echo "s3服务器问题,下载jacoco包失败"
fi
