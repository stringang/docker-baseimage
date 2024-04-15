FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    curl \
    tzdata \
    lsof

ENV TZ="Asia/Shanghai"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

# https://github.com/nodesource/distributions/blob/master/README.md
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs

# https://github.com/dotnet/diagnostics/blob/main/documentation/lldb/linux-instructions.md#ubuntu-1804
RUN apt-get install -y \
    lldb-4.0 \
    make \
    g++ \
    gdb

# https://github.com/nodejs/llnode/issues/290#issuecomment-526558706
RUN npm install --unsafe-perm --lldb_exe=`which lldb-4.0` -g llnode