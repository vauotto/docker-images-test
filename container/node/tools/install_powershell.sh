#!/bin/bash

set -e

LINUX_ARCH=$(uname -m)

if [[ $LINUX_ARCH == "aarch64" ]]; then
    downloadLink=$(curl -s https://api.github.com/repos/powershell/powershell/releases/latest | grep browser_download_url | grep linux-arm64.tar.gz | cut -d '"' -f 4)
else
    downloadLink=$(curl -s https://api.github.com/repos/powershell/powershell/releases/latest | grep browser_download_url | grep linux-x64.tar.gz | cut -d '"' -f 4)
fi

curl -L -o /tmp/powershell.tar.gz $downloadLink
mkdir -p /opt/microsoft/powershell/
tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/
chmod +x /opt/microsoft/powershell/pwsh
ln -s /opt/microsoft/powershell/pwsh /usr/bin/pwsh
rm -rf /tmp/powershell.tar.gz

trap 'echo "Erro ao instalar o PowerShell Core."' ERR