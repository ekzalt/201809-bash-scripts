#!/bin/bash

# Linux Bash scripting

echo 'Show inners in this folder'
ls

# start terminal
xterm &

ls -la

echo 'Done 1'

# для запуска можно использовать:
# 1) bash <path/to/file.sh>
# 2) ./file.sh - with executable permissions - chmod a+x file.sh

#############################################################

# объявление переменных с присвоением

# присвоение значения
myComp='Asus-PC'

# присвоение вывода от выванной команды - обратные кавычки
myOS=`uname -a`

# строки в одиночных кавычках не интерпретируемы, а в двойных интерпретируемы
echo '$myComp : $myOS'
echo "$myComp : $myOS"

# $0 - название этого файла, $1 - 1й аргумент, $2 - 2й аргумент и т.д.
echo "0: $0"
echo "1: $1"
echo "2: $2"

echo 'Done 2'

# вызов скрипта с аргументами
# ./script.sh hello world

#############################################################

# арифметические операции
a=10
b=20
c=$((a+b))

echo "$a + $b = $c"

echo 'Done 3'

#############################################################

myHost=`hostname`
myGateway='8.8.8.8'

ping -c 4 $myHost
ping -c 4 $myGateway

echo 'Done 4'

#############################################################

# получаем ввод от пользователя
read -p 'Please enter your name: ' userName

echo "Your name is $userName"

echo 'Done 5'

#############################################################

# условные операторы в bash

echo 'if / elif / else section'

if [ "$1" == 'Vasya' ]; then
  # do something
  echo "Privet $1 admin"
elif [ "$1" == 'John' ]; then
  # do something
  echo "Hello $1 moderator"
else
  # do something
  echo "Hi $1 user"
fi

echo 'Done 6'

echo 'case section'

x=$2

case $x in
        1)
          # do something
          echo 'One!';;
    [2-9])
          # do something
          echo 'Two-Nine!';;
  'Petya')
          # do something
          echo "Privet $x";;
        *)
          # do something
          echo 'Unknown parameter :(';;
esac

echo 'Done 7'

#############################################################

# циклы в bash

echo 'while section'

COUNTER=0

while [ $COUNTER -lt 10 ]; do # -lt - less then
  # do something
  echo "COUNTER: $COUNTER"
  
  # increment COUNTER
  COUNTER=$(($COUNTER+1))
  # let COUNTER=COUNTER+1
  # let COUNTER+=1
done

echo 'Done 8'

echo 'for ... in section'

for file in `ls *.txt`; do
  # do something
  cat $file
done

# range включительно
for n in {1..10}; do
  # do something
  echo "n: $n"
done

echo 'Done 9'

echo 'for classic section'

for (( i=0; i<10; i++ )); do
  # do something
  echo "i: $i"
done

echo 'Done 10'

#############################################################

# functions in bash

# эти функции не могут возвращать значения :(
# но могут мутировать глобальные переменные

echo 'functions section'

# объявление функции
echoFunc() {
  # do something
  echo 'Text from echoFunc'
}

# вызов функции без параметров
echoFunc

add() {
  result=$(($1+$2))
  # let result=$1+$2
  echo "$1 + $2 = $result"
}

# вызов функции c параметрами
add 1 2

echo 'Done 11'
