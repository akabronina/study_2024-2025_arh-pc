---
## Front matter
title: "Отчет по лабораторной работе №8"
subtitle: "Дисциплина: архитектура компьютера"
author: "Абронина Алиса Кирилловна"

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
Освоение программирования с применением циклов и обработкой аргументов командной строки.

# Задание

1. Выполнение лабораторной работы
2. Выполнение заданий для самостоятельной работы

# Теоретическое введение

Стек — это место для хранения данных, где последним добавленное всегда извлекается первым. Он встроен прямо в процессор компьютера и управляется специальными командами и регистрами. Основная работа стека заключается в том, чтобы запоминать адреса, куда нужно вернуться после выполнения процедуры, а также передавать данные между ними. В стеке также можно хранить временные переменные и значения регистров.

# Выполнение лабораторной работы
Создаю каталог для программ лабораторной работы №8 (рис. [-@fig:1]).

![Создание каталога](image/1){ #fig:1 width=70% }

Копирую в созданный файл программу из листинга (рис. [-@fig:2]).

![Копирование программы из листинга](image/2){ #fig:2 width=70% }

Запускаю программу, она показывает работу циклов в NASM (рис. [-@fig:3]).

![Запуск программы](image/3){ #fig:3 width=70% }

Заменяю программу изначальную так, что в теле цикла я изменяю значение регистра ecx (рис. [-@fig:4]).

![Изменение программы](image/4){ #fig:4 width=70% }

Из-за того, что теперь регистр ecx на каждой итерации уменьшается на 2 значения, количество итераций уменьшается вдвое (рис. [-@fig:5]).

![Запуск измененной программы](image/5){ #fig:5 width=70% }

Добавляю команды push и pop в программу (рис. [-@fig:6]).

![Добавление push и pop в цикл программы](image/6){ #fig:6 width=70% }

Теперь количество итераций совпадает введенному N, но произошло смещение выводимых чисел на 1  (рис. [-@fig:7]).

![Запуск измененной программы](image/7){ #fig:7 width=70% }

Создаю новый файл для программы и копирую в него код из следующего листинга  (рис. [-@fig:8]).

![Копирование программы из листинга](image/8){ #fig:8 width=70% }

Компилирую программу и запускаю, указав аргументы. Программой было обратоно то же количество аргументов, что и было введено (рис. [-@fig:9]).

![Запуск второй программы](image/9){ #fig:9 width=70% }

Создаю новый файл для программы и копирую в него код из третьего листинга (рис. [-@fig:10]).

![Копирование программы из третьего листинга](image/10){ #fig:10 width=70% }

Компилирую программу и запускаю, указав в качестве аргументов некоторые числа, программа их складывает (рис. [-@fig:11]).

![Запуск третьей программы](image/11){ #fig:11 width=70% }

Изменяю поведение программы так, чтобы указанные аргументы она умножала, а не складывала  (рис. [-@fig:12]).

![Изменение третьей программы](image/12){ #fig:12 width=70% }

Программа теперь умножает данные на вход числа  (рис. [-@fig:13]).

![Запуск измененной третьей программы](image/13){ #fig:13 width=70% }

# Задание для самостоятельной работы

Пишу программму, которая будет находить сумма значений для функции f(x) = 17+5х,
которая совпадает с моим 18 варинтом (рис. [-@fig:14]).

![Написание программы для самостоятельной работы](image/14){ #fig:14 width=70% }

Проверяю работу программы, указав в качестве аргумента несколько чисел(рис. [-@fig:15]).

![Запуск программы для самостоятельной работы](image/15){ #fig:15 width=70% }

# Выводы

В результате выполнения данной лабораторной работы я приобрела навыки написания программ с использованием циклов, а также научилась обрабатывать аргументы командной строки.


# Список литературы{.unnumbered}


