# Работа с сетью

# узнать свой IP
# windows: ipconfig
# linux: ifconfig
ifconfig
ip addr show

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
