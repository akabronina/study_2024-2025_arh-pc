---
## Front matter
title: "Отчет по лабораторной работе №7"
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
Изучение команд условного и безусловного переходов. Приобретение навыков написания
программ с использованием переходов. Знакомство с назначением и структурой файла
листинга.


# Теоретическое введение

Для реализации ветвлений в ассемблере используются так называемые команды передачи
управления или команды перехода. Можно выделить 2 типа переходов:
• условный переход – выполнение или не выполнение перехода в определенную точку
программы в зависимости от проверки условия.
• безусловный переход – выполнение передачи управления в определенную точку про-
граммы без каких-либо условий.

# Выполнение лабораторной работы

Создаю каталог для программ лабораторной работы №7 (рис. -@fig:001).
![Создание каталога и файла для программы](image/1){#fig:001 width=70%}
Копирую код из листинга в файл будущей программы. (рис. -@fig:002).

![Сохранение программы](image/2){#fig:002 width=70%}

При запуске программы я убедилась в том, что неусловный переход действительно изменяет порядок выполнения инструкций (рис. -@fig:003).

![Запуск программы](image/3){#fig:003 width=70%}
Изменяю программу таким образом, чтобы поменялся порядок выполнения функций (рис. -@fig:004).

![Изменение программы](image/4){#fig:004 width=70%}
Запускаю программу и проверяю, что примененные изменения верны (рис. -@fig:005).

![Запуск изменеенной программы](image/5){#fig:005 width=70%}
Теперь изменяю текст программы так, чтобы все три сообщения вывелись в обратном порядке (рис. -@fig:006).

![Изменение программы](image/51){#fig:006 width=70%}
Работа выполнена корректно, программа в нужном мне порядке выводит сообщения (рис. -@fig:007).

![Проверка изменений](image/52){#fig:007 width=70%}
Создаю новый рабочий файл и вставляю в него код из следующего листинга (рис. -@fig:008).

![Сохранение новой программы](image/6){#fig:008 width=70%}
Программа выводит значение переменной с максимальным значением (рис. -@fig:009).

![Проверка программы из листинга](image/7){#fig:009 width=70%}
Создаю файл листинга с помощью флага -l команды nasm  (рис. -@fig:010).

![Проверка файла листинга](image/8){#fig:010 width=70%}

Удаляю один операнд из случайной инструкции, чтобы проверить поведение файла листинга в дальнейшем .


В новом файле листинга показывает ошибку, которая возникла при попытке трансляции файла. Никакие выходные файлы при этом помимо файла листинга не создаются. (рис. -@fig:012).

![Просмотр ошибки в файле листинга](image/10){#fig:012 width=70%}
## Задания для самостоятельной работы
Буду использовать свой вариант - 18 - из предыдудщей лабораторной работы. 
Проверяю корректность написания первой программы (рис. -@fig:014).

![Проверка работы первой программы](image/11){#fig:014 width=70%}
Пишу программу, которая будет вычислять значение заданной функции согласно моему варианту для введенных с клавиатурых переменных a и x (рис. -@fig:015).

![Вторая вывод задания для  самостоятельной работы](image/12){#fig:015 width=70%}

# Выводы

При выполнении лабораторной работы я изучила команды условных и безусловных переходво, а также приобрела навыки написания программ с использованием перходов, познакомилась
с назначением и структурой файлов листинга.

# Список литературы{.unnumbered}

::: {#refs}
:::
