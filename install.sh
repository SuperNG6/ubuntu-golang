#!/bin/bash

# Check CPU architecture
ARCH=$(uname -m)
echo -e "${INFO} Check CPU architecture ..."
if [[ ${ARCH} == "x86_64" ]]; then
    ARCH="amd64"
elif [[ ${ARCH} == "aarch64" ]]; then
    ARCH="arm64"
# armv7版构建失败，暂时先不搞
# elif [[ ${ARCH} == "armv7l" ]]; then
#     ARCH="armv6l"
else
    echo -e "${ERROR} This architecture is not supported."
    exit 1
fi
https://golang.org/dl/go1.15.14.linux-armv6l.tar.gz
# download go
# wget -c https://mirrors.ustc.edu.cn/golang/go${GO_VER}.linux-${ARCH}.tar.gz -O - | tar -xz -C /usr/local
wget --no-check-certificate -c https://golang.org/dl/go${GO_VER}.linux-${ARCH}.tar.gz -O - | tar -xz -C /usr/local
