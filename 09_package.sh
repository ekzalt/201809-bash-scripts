# Скачивание и установка программ-пакетов

#############################################################

# wget <url> - web get, скачивание ресурса с инета
# сохраняет по умолчанию в директорию из которой вызвана комманда
wget http://my.site.com/images/img01.jpg

# Менеджер пакетов Debian, Ubuntu, Mint, Kali - apt-get,
# поддерживаемые пакеты *.deb
# sudo apt-get <command> <package-name> <flags>

# install - установим ssh-сервер себе, 
# чтоб можно потом подключаться к этому компу по ssh
sudo apt-get install openssh-server

# whereis <package-name> путь к установленной программе
whereis ssh

# cat <path/to/file> - посмотрим список ссылок Ubuntu репозиториев
cat /etc/apt/sources.list

# remove - удалим ненужную программу htop
sudo apt-get remove htop

# dpkg - debian package - работа с Debian пакетами, установка удаление и др.
# -i:install <path/to/package-file>
# -r:remove <package-name>

# скачивание *.deb пакета
wget https://my.site.com/download/linux/debian/some_package_1.2.3_amd64.deb

# установка скаченного *.deb пакета
sudo dpkg -i some_package_1.2.3_amd64.deb

# удаление установленного *.deb пакета
sudo dpkg -r some-package

#############################################################

# Менеджер пакетов CentOS, Red Hat - yum, поддерживаемые пакеты *.rpm
# sudo yum <command> <package-name> <flags>

# install - Установка inkscape на CentOS
sudo yum install inkscape

# whereis <package-name> путь к установленной программе
whereis inkscape

# remove - Удаление inkscape из CentOS
sudo yum remove inkscape

# rpm - Red Hat, CentOS packages, работа с *.rpm пакетами
# -i:install <path/to/package-file>
# -e:erase <package-name OR path/to/package-folder>

# скачивание *.rpm пакета
wget https://my.site.com/download/linux/debian/nethack_1.2.3_amd64.rpm

# установка скаченного *.rpm пакета
sudo rpm -i nethack_1.2.3_amd64.rpm

# whereis <package-name> путь к установленной программе
whereis nethack

# удаление установленного *.rpm пакета
sudo rpm -e nethack
