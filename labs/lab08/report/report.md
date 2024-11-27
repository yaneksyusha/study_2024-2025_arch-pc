---
## Front matter
title: "Отчёт по лабораторной работе №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки."
author: "Юсупова Ксения Равилевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# Задание

Написать программы с использованием циклов и обработкой аргументов командной строки.

# Выполнение лабораторной работы

## Реализация циклов в NASM
Создаём каталог для программам лабораторной работы № 8, переходим в него и
создаём файл lab8-1.asm(рис. [-@fig:001]).

![Создали каталог с помощью команды mkdir и файл lab8-1.asm с помощью команды touch](image/81.png){#fig:001 width=70%}

Вводим в файл lab8-1.asm текст программы из листинга 8.1. и рассмотрим программу, которая выводит значение регистра ecx. (рис. [-@fig:002]).

![Заполнили файл по листингу 8.1](image/82.png){#fig:002 width=70%}

Создаем исполняемый файл и запускаем его(рис. [-@fig:003]).

![Создали исполняемый файл и запустили его](image/83.png){#fig:003 width=70%}

Далее изменяем текст программы, добавив изменение значения регистра ecx в цикле.(рис. [-@fig:004]).

![Изменили файл](image/84.png){#fig:004 width=70%}

Создаем исполняемый файл и запускаем его((рис. [-@fig:005]).

![Создали исполняемый файл и запустили его](image/85.png){#fig:005 width=70%}

Регистр ecx принимает значения 9,7,5,3,1, регистр при каждой итерации уменьшается на 2. Число проходов цикла не соответсвует числу N введенному с клавиатуры.

Далее также как и ранее изменяем текст программы, добавив команды push и pop(рис. [-@fig:006]).

![Изменили файл lab8-1.asm](image/86.png){#fig:006 width=70%}

Создаем исполняемый файл и запускаем его(рис. [-@fig:007]).

![Создали исполняемый файл и запустили его](image/87.png){#fig:007 width=70%}

Число проходов цикла соответствует значению N введенному с клавиатуры в данном случае.

## Обработка аргументов командной строки

Создаем новый файл lab8-2.asm в каталоге ~/work/arch-pc/lab08.с помощью команды touch(рис. [-@fig:008]).

![Создали файл lab8-2.asm](image/88.png){#fig:008 width=70%}

Вводим в файл lab8-2.asm текст программы из листинга 8.2(рис. [-@fig:009]).

![Заполнили файл по листингу 8.2](image/89.png){#fig:009 width=70%}

Создаем исполняемый файл и запускаем его, указав аргументы (рис. [-@fig:010]).

![Создали исполняемый файл и запустили его](image/810.png){#fig:010 width=70%}

Программой было обработано 3 аргумента.

Создаем новый файл lab8-3.asm в каталоге ~/work/arch-pc/lab08.с помощью команды touch (рис. [-@fig:011]).

![Создали файл lab8-3.asm](image/811.png){#fig:011 width=70%}

Вводим в файл lab8-3.asm текст программы из листинга 8.3(рис. [-@fig:012]).

![Заполнили файл по листингу 8.3](image/812.png){#fig:012 width=70%}

Создаем исполняемый файл и запускаем его(рис. [-@fig:013]).

![Создали исполняемый файл и запустили его](image/813.png){#fig:013 width=70%}

Изменяем текст программы из листинга 8.3 для вычисления произведения аргументов командной строки.(рис. [-@fig:014]).

![Изменили текст программы в файле lab8-2.asm](image/814.png){#fig:014 width=70%}

Создаем исполняемый файл и запускаем его(рис. [-@fig:015]).

![Создали исполняемый файл и запустили его](image/815.png){#fig:015 width=70%}

## Задание для самостоятельной работы 

1. Напишите программу, которая находит сумму значений функции f(x) для x=x1,x2,...,xn т.е. программа должна выводить значение f(x1)+f(x2)+...+f(xn). Значения xi передаются как аргументы. Вид функции f(x) выбрать из таблицы 8.1 вариантов заданий в соответствии с вариантом, полученным при выполнении лабораторной работы № 7. Создайте исполняемый файл и проверьте его работу на нескольких наборах x= x1, x2,..., xn. 

Вид функции f(x) выбран в соответствии с 12 вариантом из таблицы 8.1

Создаем новый файл lab8-4.asm для выполнения 1 задания(рис. [-@fig:016]).

![Создали файл lab8-4.asm](image/816.png){#fig:016 width=70%}

Открываем файл и пишем программу, которая находит сумму значений функции f(x) для x=x1,x2,...,xn (функция f(x) для 12 варинта)(рис. [-@fig:017]).

![Заполнили файл lab8-4.asm в соответствии с условием задачи](image/817.png){#fig:017 width=70%}

Создаем исполняемый файл и запускаем его, убедившись в правильности вывода при х1=1, х2=2, х3=3 (рис. [-@fig:018]).

![Создали исполняемый файл и запустили его, проверив вывод](image/818.png){#fig:018 width=70%}

Вновь создаем исполняемый файл и запускаем его, убедившись в правильности вывода при х1=11, х2=5, х3=12 (рис. [-@fig:019]).

![Вновь создали исполняемый файл и запустили его, проверив вывод с иными значениями х1, х2, х3](image/819.png){#fig:019 width=70%}

# Выводы

В ходе лабораторной работы мы приобрели навыки написания программ с использованием циклов и обработкой аргументов командной строки.

