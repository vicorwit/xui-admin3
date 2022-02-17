#!/bin/sh -l
set -e -x
cd $1
export PATH="/usr/local/go/bin/:$PATH"
mkdir x-ui
cp -R bin x-ui
rm x-ui/bin/xray-linux-arm64
CGO_ENABLED=1 go build -o ./x-ui/x-ui -trimpath -ldflags '-w -s' main.go
cp x-ui.* x-ui
tar czf x-ui-linux-amd64.tar.gz x-ui
rm -rf x-ui
echo "New release created: x-ui-linux-amd64.tar.gz"
filename=x-ui-linux-amd64.tar.gz
echo ::set-output name=filename::$filename
