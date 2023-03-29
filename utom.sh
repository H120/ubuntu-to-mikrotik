apt update 

apt-get install unzip 

cd /tmp 

read version

wget https://download.mikrotik.com/routeros/$version/chr-$version.img.zip 

unzip chr-$version.img.zip 

dd if=chr-$version.img of=/dev/sda bs=4M oflag=sync 

echo 1 > /proc/sys/kernel/sysrq 

echo b > /proc/sysrq-trigger
