# Общий обзор комманд

# Superuser DO - запуск следующей команды с правами суперпользователя
sudo

# перезагрузить комп
sudo reboot now

# выключить комп
sudo shutdown now

# uname - информация об операционной системе [ -a ]
uname
uname -a

# computer uptime
uptime

# CPU info
lscpu

# clear console screen
clear

# ls - список папок и файлов в по умолчанию - текущей папке, или по указанному пути
# [ -l:info mode -a:hidden -la:info+hidden -R:recursive ]
# [ dirName path/to/dir ]
ls
ls -la
ls dir1
ls -la path/to/dir1
# outputs to console all dirs and files - super hacker style :)
# ls long-list all(+hidden)files recursive fromRoot(/)
sudo ls -la -R /

# Prints <text> to console
# каждый символ, разделенный пробелом, выводится на отдельной строке (\n)
echo "hello1" 'hello2' hello3

# path - list of path apps
echo $PATH

#############################################################

# man <package-name> - manual - описание встроенных linux пакетов
# [ -k:поиск по <keyWord> ]

# manual about uptime
man uptime

# Найти все команды, где есть слово time
man -k time

# поиск по тексту в man
/yourWord

# выйти из текстового режима man
q

#############################################################

# info <package-name> - еще один справочник
info uptime

# whatis <package-name> - короткая справка
whatis uptime

# whereis <package-name> - path to package or file
# ищет только системные и запускаемые файлы
whereis uptime

# locate <dir or file> - path to dir or file
locate readme.txt

# list or running processes
ps

# kill process
ctrl+c

# sleep process
ctrl+z

# return slept process to active mode
fg

# cd <path> - chage dir
cd /path/to/some/dir

# print path from root to current dir
pwd

# service <serviceName> <status | start | stop> - проверка / запуск / остановка служб, может потребоваться sudo
service mongod status
service mongod start
service mongod stop

#############################################################

# Работа с дисками

# [s:sata|h:old ide][d:device][a:letter]
# sda - 1st SATA HDD/SSD
# sdb - 2nd SATA HDD/SSD
# sdc - 3rd SATA HDD/SSD ...

# fdisk [ -l:list ] - информация о диске
sudo fdisk -l

# lsblk - короткая информация о диске
lsblk

# blkid <dev/partition> - узнать uuid диска
sudo blkid /dev/sda1

# cfdisk <dev/disk> - просмотр, создание, редактирование разделов диска
sudo cfdisk /dev/sdb

# mkfs.<fsType> [ -f:format ] <dev/partition> - make file system
sudo mkfs.ntfs -f /dev/sdb1

# прописываем новый диск в таблицу дисков
sudo nano /etc/fstab

# mount <mount/path> - монтируем новый диск
sudo mount media/hdd2
