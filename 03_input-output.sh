# Перенаправление ввода/вывода

# вывод в файл перезапись/добавление
# >	>>	- stdout
# 2>	2>>	- stderr
# &>	&>>	- оба потока

# Запишем отсортированный вывод имен из таблицы в созданный на лету файл
cut -d ';' -f 3 employee.csv | sort > names.txt

# Добавим данные в файл
cut -d ';' -f 3 employee.csv | sort >> names.txt

# перенаправляем stderr в файл
grep alex /etc/* 2> stderr.txt

# перенаправляем stderr в никуда (dev - девайс, null - несуществующий)
grep alex /etc/* 2> /dev/null

# записываем потоки stdout и stderr в разные файлы
grep alex /etc/* > stdout.txt 2> stderr.txt

# записываем оба потока в один файл
grep alex /etc/* &> output.txt
