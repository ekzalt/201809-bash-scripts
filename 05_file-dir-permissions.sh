# Права доступа и владения файлами и директориями

#  1   2    3    4    5      6           7
# [d][rwx][r-x][r-x] [3] [userName] [groupName] права папки
# [-][rw-][r--][r--] [1] [userName] [groupName] права файла

# 1 - d:dir, l:link, -:file
# 2 - u:user - права пользователя,
#         r:read, w:write/delete,
#         x:execute для файлов, enter для директорий или
#         t:StickyBit - стирать файлы из этой папки могут только их владельцы
# 3 - g:group - права группы
# 4 - o:others - остальные права
#         a:all - user & group & others
# 5 - количество ссылок на объект
# 6 - userName, пользователь владеющий файлом
# 7 - groupName, группа владеющая файлом

# комманда поменять владельца / группу
# chown <userName> <path/to/dirOrFile> - change owner
# chgrp <groupName> <path/to/dirOrFile> - change group

# поменять права, пермиссии, модификаторы доступа
# chmod <groupLetter+-=permissionLetter> <path/to/dirOrFile> - change modify

# поменять пользователя вледеющего файлом или директорией
sudo chown vasya dir1/

# поменять группу вледеющую файлом или директорией
sudo chgrp Developers employee.csv

# дать "остальным" право запускать файл
chmod o+x script.sh

# убрать у группы право писать в файл, а "остальным" дать писать
chmod g-w,o+w employee.csv

# поставить для всех только чтение на файл
chmod ugo=r names.txt
chmod a=r names.txt

# Номера:
# rwx	7	4 + 2 + 1
# rw-	6	4 + 2 + 0
# r-x	5	4 + 0 + 1
# r--	4	4 + 0 + 0
# -wx	3	0 + 2 + 1
# -w-	2	0 + 2 + 0
# --x	1	0 + 0 + 1
# ---	0	0 + 0 + 0

# позволить всем все - читать, писать, вызывать
chmod 777 script.sh

# включить StickyBit - всем все позволено,
# но стирать файлы могут только их владельцы,
# если только не используют sudo для удаления
sudo chmod o+t shareDir/
sudo chmod 1777 shareDir/

# отключить StickyBit
sudo chmod o-t shareDir/
sudo chmod 0777 shareDir/
