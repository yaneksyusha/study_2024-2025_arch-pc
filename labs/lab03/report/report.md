---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
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

Целью работы является освоение процедуры оформления отчётов с помощью легковесного языка разметки Markdown.


# Выполнение лабораторной работы

1)Установили Pandoc и TexLive.

2)Открыли терминал и перешли в каталог курса сформированный при выполнении лабораторной работы.

![Переходим в нужный каталог](/home/ksyusha/Изображения/photo_2024-10-13_22-18-05.jpg){#fig:001 width=70%}

3)Обновили локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды
![Используем команду git pull](/home/ksyusha/Изображения/photo_2024-10-13_22-18-10.jpg){#fig:002 width=70%}

4)Переходим в каталог с шаблоном отчета по лабораторной работе номер 3.
![Переходим в нужный каталог](/home/ksyusha/Изображения/photo_2024-10-13_22-18-15.jpg){#fig:003 width=70%}

5)Используем команду make для создания файлов report.md и report.docx.
![Используем команду make](/home/ksyusha/Изображения/photo_2024-10-13_22-18-20.jpg){#fig:004 width=70%}

6)Проверяем сработала ли команда
![Открываем файл и проверяем создание документов](/home/ksyusha/Изображения/photo_2024-10-13_22-18-25.jpg){#fig:005 width=70%}

7)Используем команду make clean
![Используем команду make clean и удаляем файлы](/home/ksyusha/Изображения/photo_2024-10-13_22-18-29.jpg){#fig:006 width=70%}

8)Изучаем открывшийся файл
![Изучаем документ](/home/ksyusha/Изображения/photo_2024-10-13_22-18-34.jpg){#fig:007 width=70%}

9)Изменяем полученный документ
![Изменяем документ (1 часть)](/home/ksyusha/Изображения/photo_2024-10-13_22-18-39.jpg){#fig:008 width=70%}
![Изменяем документ (2 часть](/home/ksyusha/Изображения/photo_2024-10-13_22-19-28.jpg){#fig:009 width=70%}

10)Выполняем задание и вносим полученные файлы в Github
![Занесли файлы в Github](/home/ksyusha/Изображения/photo_2024-10-13_22-19-36.jpg){#fig:010 width=70%}
# Выводы

Мы смогли ознакомиться со способом использования Markdown и сделали отчёт в нём, и загрузили отчёт в Github

# Список литературы{.unnumbered}

::: Архитектура ЭВМ
