#!/usr/bin/env bash

#for output in $(ls -la)
#do
#    echo ${output} >> "example_1.txt"
#done

#for output in $(ls)
#do
#    cat ${output}
#done

#VARIABLE=
#case "$VARIABLE" in
#    # Перечислите шаблоны для условий, которые хотите отловить
#    0) echo "Тут ноль.";;
#    1) echo "Тут один.";;
#    *) if [[ -n $VARIABLE ]]
#        then
#            echo "Это не пустое значение."
#       else
#            echo "Empty"
#       fi
#esac

#tr 'a-z' 'A-Z'
#exit 0

#for i in 1 2 3 4 5 6 7 8 9 10            # Первый цикл.
#do
#  echo -n "$i "
#done & # Запуск цикла в фоне.
#       # Иногда возможны случаи выполнения этого цикла после второго цикла.
#
#echo   # Этот 'echo' иногда не отображается на экране.
#
#for i in 11 12 13 14 15 16 17 18 19 20   # Второй цикл.
#do
#  echo -n "$i "
#done
#
#echo   # Этот 'echo' иногда не отображается на экране.

# ======================================================

# Ожидается, что данный сценарий выведет следующую последовательность:
# 1 2 3 4 5 6 7 8 9 10
# 11 12 13 14 15 16 17 18 19 20

# Иногда возможен такой вариант:
# 11 12 13 14 15 16 17 18 19 20
# 1 2 3 4 5 6 7 8 9 10 bozo $
# (Второй 'echo' не был выполнен. Почему?)

# Изредка возможен такой вариант:
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
# (Первый 'echo' не был выполнен. Почему?)

# Крайне редко встречается и такое:
# 11 12 13 1 2 3 4 5 6 7 8 9 10 14 15 16 17 18 19 20
# Второй цикл начал исполняться раньше первого.



#for i in 11 12 13 14 15 16 17 18 19 20   # Второй цикл.
#do
#  echo -n "$i "
#done
#variable1="a variable '/' containing five words"
#echo This is $variable1 # Исполнение COMMAND с 7 входными аргументами: # "This" "is" "a" "variable" "containing" "five" "words"
#echo "This is $variable1" # Исполнение COMMAND с одним входным аргументом: # "This is a variable containing five words"
#variable2="" # Пустая переменная.
#echo $variable2 $variable2 $variable2 # Исполнение COMMAND без аргументов.
#echo "$variable2" "$variable2" "$variable2" # Исполнение COMMAND с 3 "пустыми" аргументами. COMMAND "$variable2 $variable2 $variable2" # Исполнение COMMAND с 1 аргументом (и 2 пробелами).

#re='^[0-9]+$'
#
#echo "Enter number: \n"
#
#read number
#
#if [[ -z "$number" ]]
#then
#    echo "Number is empty. \n"
#    exit 1
#fi
#if ! [[ "$number" =~ $re ]]
#then
#    echo "Not a number"
#else
#    echo "Right!"
#fi


#if [ "$string1" ]
#then
#    echo "Строка \"string1\" не пустая."
#else
#   echo "Строка \"string1\" пустая."
#fi

var=10
echo $((5*${var}))