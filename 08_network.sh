# Работа с сетью

# узнать свой IP
# windows: ipconfig
# linux: ifconfig [ netDevice netIP, netmask maskIP ]
ifconfig
ip addr show

# ifdown <netDevice> / ifup <netDevice> - выкл/вкл сетевуху

# таблица маршрутизации
route
ip route show

# Ping Google [ -c:count, example 4 ]
ping 8.8.8.8
ping -c 4 www.google.com

# Трассировка роутов, через какие роуты идет запрос
traceroute www.google.com

# Узнать информацию, где хоститься ресурс, и его IP по его доменному имени
host www.microsoft.com
dig www.ebay.com

# Проверка своих портов
netstat

# Подключение но SSH использует порт 22
# ssh <userName>@<compName OR your.site.com OR 192.168.1.1>

# открыть порт 22, по умолчанию он открыт если установлен openssh-server
sudo ufw allow 22

# установить ssh-сервер себе, чтоб можно потом подключаться к этому компу по ssh
sudo apt-get install openssh-server

#############################################################

# hostname [ <newName> ] - показать / поменять имя компа
hostname

# поменять название компа и затем перегрузить
sudo nano /etc/hostname
sudo reboot now

# поменять название в сессии без перезагрузки, затем перезайти в терминал
sudo hostname ubuntu18
sudo nano /etc/hostname

# также не забыть поменять имя компьютера в hosts и перезагрузить комп
sudo nano /etc/hosts
sudo reboot now

# прописать настройти из ifconfig в interfaces
ifconfig
sudo nano /etc/network/interfaces
# example:
# auto enp0s3
# iface enp0s3 inet static
#     address 20.20.20.20
#     netmask 255.0.0.0
#     gateway 20.20.20.1
#     dns-nameservers 8.8.8.8

# далее перезагрузить весь компьютер
sudo reboot now

# или только сетевой адаптер устройства, здесь это enp0s3
sudo ifdown enp0s3
sudo ifup enp0s3

# временно, до перезапуска поменять IP сетевого устройства, здесь это enp0s3 и маску подсети
sudo ifconfig enp0s3 10.10.10.10 netmask 255.0.0.0

#############################################################

# ssh <username(optional)>@<compName | domainName | IP> - подключение по ssh к удаленному UNIX компьютеру по порту 22 (порт должен быть открыт и прослушиваем)
ssh

# проверим статус ssh службы
service ssh status

# если не указывать username, то username будет подставлен автоматичечки из текущего сеанса пользователя
ssh localhost
ssh vasya@localhost
ssh 127.0.0.1
ssh vasya@127.0.0.1

# exit - закрыть сеанс ssh
exit
