#!/bin/sh

set -e

apache2ctl start

# なんかクラッシュループしてそうだから回避用

while true
do
  sleep 1
done