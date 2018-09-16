# cron - Работа по расписанию

# crontab [ -l:read mode, -e:edit mode ] - просмотр / редактирование cron-jobs
crontab -l
crontab -e

# job: m h dom mon dow command
# m - minute (0-59) (* - any)
# h - hour (0-23) (* - any)
# dom - day of month (1-31) (* - any)
# mon - month (1-12) (* - any)
# dow - day of week (0-6) (Sunday=0) (* - any)
# command - command to run OR path/to/script.sh

# example 1 - запуск в любое время в пятницу
# * * * * 5 echo 'Friday cron' >> /home/alex/logs/cron-jobs.log

# example 2 - запуск в 12:50 каждый день
# 50 12 * * * echo '12:50 cron' >> /home/alex/logs/cron-jobs.log

# example 3 - запуск каждую минуту
# * * * * * echo '1 min ping cron' >> /home/alex/logs/cron-jobs.log

# example 4 - запуск каждые 5 минут
# */5 * * * * echo '5 min ping cron' >> /home/alex/logs/cron-jobs.log

# example 5 - запуск в 6 утра и в 6 вечера
# * 6,18 * * * echo '6:00 and 18:00 cron' >> /home/alex/logs/cron-jobs.log

# example 6 - запуск каждые 4 часа своего скрипта
# * */4 * * * /home/alex/scripts/cron-job.sh

# абсолютный путь к cron таблицам пользователей
sudo nano /var/spool/cron/crontabs/userName

# главная cron таблица системы
sudo nano /etc/crontab

# главная cron таблица пишет в общий системный лог
sudo cat /var/log/syslog | grep CRON
