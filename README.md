# Проект TestKotlin<br>
Программа разбивает ваш текст на слова, и работает с ним.
1. задание: программа разбивает вашь текст на слова.
2. задание: программа делает первое задание и сортирует по алфавиту.
3. задание: программа делает второе задание и делает слова уникальными.
4. задание: программа делает третье задание и подсчитывает сколько слов было найдено одинаковых для каждого слова.
5. задание: программа делает четвертое задание и сортирует с начало по колл. найденых слов по убыванию, потом сортирует по алфавиту.

## Инструкция по запуску<br>
### Компилирование<br>
Запустите файл Build.but.

### Запуск<br>
1)Откройте командную строку в проекте<br>
2)Введите следущее: java -jar (название файла c расширением) (текст)<br>
*Скобки писать не нужно

## Пример<br>
### 1 задание

Ввод:
java -jar task1.jar the quick brown fox jumps over the lazy dog

Вывод:<br>
Задание 1<br>
Результат:<br>
the<br>
quick<br>
brown<br>
fox<br>
jumps<br>
over<br>
the<br>
lazy<br>
dog<br>


### 2 задание

Ввод:
java -jar task2.jar the quick brown fox jumps over the lazy dog

Вывод:<br>
Задание 2<br>
Результат:<br>
brown<br>
dog<br>
fox<br>
jumps<br>
lazy<br>
over<br>
quick<br>
the<br>
the<br>


### 3 задание

Ввод:
java -jar task3.jar the quick brown fox jumps over the lazy dog

Вывод:<br>
Задание 3<br>
Результат:<br>
brown<br>
dog<br>
fox<br>
jumps<br>
lazy<br>
over<br>
quick<br>
the<br>


### 4 задание

Ввод:
java -jar task4.jar the quick brown fox jumps over the lazy dog

Вывод:<br>
Задание 4<br>
Результат:<br>
brown 1<br>
dog 1<br>
fox 1<br>
jumps 1<br>
lazy 1<br>
over 1<br>
quick 1<br>
the 2<br>


### 5 задание

Ввод:
java -jar task5.jar the quick brown fox jumps over the lazy dog

Вывод:<br>
Задание 5<br>
Результат:<br>
the 2<br>
brown 1<br>
dog 1<br>
fox 1<br>
jumps 1<br>
lazy 1<br>
over 1<br>
quick 1<br>


*В 5 задании, если вы не вводите параметры, вы можете их указать в командкой строке после ее открытия