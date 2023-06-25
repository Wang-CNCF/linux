#收集用户信息和用户组信息
cat  /etc/passwd | grep "/home" |  awk -F ':' '{print $1}';echo '-----------';cat /etc/shadow|sed -n  "/\$.*\$/p"|awk -F ':' '{print $1}'|grep -v root