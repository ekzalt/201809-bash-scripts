# Архивирование и компрессия

# tar - объединяет файлы и директории в один файл-архив
# c - create - создание архива
# z - use gzip compressor
# j - use bzip2 compressor
# J - use xz compressor
# t - test - просмотр содержимого архива (рекурсивно)
# x - extract - распаковка архива
# v - viewer - показывать процесс создания архива
# f - file (f должна быть всегда в конце)
# <target:archive.tar>
# <source:dir1>

# создаем из архив папки dir1
tar cf archive.tar dir1

# распаковываем архив
tar xf archive.tar

# gzip / bzip2 / xz - компрессия файлов, не папок. Обычно сжимают tar-архивы
# gunzip / bunzip2 / unxz - распаковать

# сожмем tar-архив: gzip / bzip2 / xz <path/to/file.tar>
gzip archive.tar # -> archive.tar.gz
bzip2 archive.tar # -> archive.tar.bz2 (жмет лучше всего)
xz archive.tar # -> archive.tar.xz (жмет слабее всего)

# используем архивирование со сжатием
tar czf archive-tar-gzip.gz dir1
tar cjf archive-tar-bzip2.bz2 dir1
tar cJf archive-tar-xz.xz dir1


# zip - классический zip, позволяет архивировать и сжимать файлы и папки,
# жмет слабее всего
# -r:рекурсивно для папок с файлами
zip -r archive.zip dir1

# распаковать zip
unzip archive.zip
