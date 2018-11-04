#/bin/bash

echo "开始备份！"

cp -a /etc /backup/etcbak`date -d "-1 day"`.tar.xz 



