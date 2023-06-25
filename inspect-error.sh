#该脚本用于检查/etc/profile.d/里面的文件哪个有问题

for i in /etc/profile.d/*.sh ; do
    if [ -r "$i" ]; then
        if [ "${-#*i}" != "$-" ]; then 
            echo $i
            echo "1"
            . "$i"
        else
            echo $i
            echo "2"
            . "$i" >/dev/null
        fi
    fi
done