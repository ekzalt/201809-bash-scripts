# Процессы и память

# top / htop - task managers
top
htop

# free [ -h:MB/GB ] - memory report
free
free -h

# ps - активные процессы залогиненого пользователя
# -u:username
# -a:all
# x:все процессы с путями и правами

# вывести все процессы и отфильтровать по имени alex
ps -aux | grep alex

# путь к логам linux на диске
cd /var/log

# лог linux ядра в памяти
dmesg

# просмотр логов по системному диску (sda)
dmesg | grep sda
