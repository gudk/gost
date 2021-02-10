#!/bin/sh

source /koolshare/scripts/base.sh

start(){
        
        if [ -f "/koolshare/gost/config.json" ];then
                /koolshare/gost/gost -C /koolshare/gost/config.json >/dev/null 2>&1 &
                logger "启动gost!"
        else
                logger "未找到config文件!"
        fi
}

start