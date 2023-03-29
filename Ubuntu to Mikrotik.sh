apt update 

apt-get install unzip 

cd /tmp 

wget https://download.mikrotik.com/routeros/7.6/chr-7.6.img.zip 

unzip chr-7.6.img.zip 

dd if=chr-7.6.img of=/dev/sda bs=4M oflag=sync 

echo 1 > /proc/sys/kernel/sysrq 

echo b > /proc/sysrq-trigger