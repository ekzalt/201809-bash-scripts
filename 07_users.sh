# Пользователи и аккаунты

# путь к ассоциированным путям, системным и пользовательским аккаунтам
sudo cat /etc/passwd

# путь к файлу с паролями
sudo cat /etc/shadow

# список всех групп
sudo cat /etc/group

# директория-шаблон, с которой все копируется в <user>/home
# при создании нового пользователя
cd /etc/skel/

# whoami - Who am I? - имя пользователя
whoami

# id [ <username> ] - свои IDs групп и названия групп или другого пользователя
id
id vasya

# su <username> - switch user - переключает на пользователя с именем <username>
su vasya

# exit - вернуться к своему пользователю
exit

# last - последняя информация о пользователях и их действиях
last

# w / who - кто сейчас залогинен в систему, и что делает
w
who

# useradd <username> - создать нового пользователя
# -m: дополнительно создать home dir для него
sudo useradd -m vasya

# passwd <username> -> input initial password
# далее следует ему присвоить пароль, чтобы он мог залогиниться в систему
sudo passwd vasya

# userdel <username> - удалить существующего пользователя
# -r:дополнительно удалить его home dir
sudo userdel -r vasya

# groupadd <groupName> - создание новой группы
sudo groupadd Developers

# groupdel <groupName> - удаление существующей группы, с sudo
sudo groupdel Developers

# usermod - модификация, изменение сужествующего пользователя
# -aG:append group, добавить в группу
# <groupName>
# <username>

# добавим пользователя alex в группу Developers
sudo usermod -aG Developers alex

# сделаем Васю админом - добавим его в группу sudo
sudo usermod -aG sudo vasya

# deluser <userName> <groupName> - удаление пользователя из группы
# Вася - плохой админ, отберем у него права - удалим его с группы sudo
sudo deluser vasya sudo
