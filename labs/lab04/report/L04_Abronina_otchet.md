---
## Front matter
title: "Отчет по лабораторной работе №4"
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

Цель данной лабораторной работы - освоить процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

Создание программы Hello world!
Работа с транслятором NASM
Работа с расширенным синтаксисом командной строки NASM
Работа с компоновщиком LD
Запуск исполняемого файла
Выполнение заданий для самостоятельной работы.

# Выполнение лабораторной работы
## Создание программы Hello world!

Создаю в текущем каталоге пустой текстовый файл hello.asm с помощью утилиты touch (рис. [-@fig:001]).
![Создание пустого файла](image/1){ #fig:001 width=70% }

Открываю созданный файл в текстовом редакторе mousepad (рис. [-@fig:002]).
![Открытие файла в текстовом редакторе](image/2){ #fig:002 width=70% }

Заполняю файл, вставляя в него программу для вывода "Hello word!" (рис. [-@fig:003]).
![Заполнение файла](image/3){ #fig:003 width=70% }

## Работа с транслятором NASM
Превращаю текст программы для вывода "Hello world!" в объектный код с помощью транслятора NASM, используя команду nasm -f elf hello.asm, ключ -f указывает транслятору nasm, что требуется создать бинарный файл в формате ELF (рис. [-@fig:004]). Далее проверяю правильность выполнения команды с помощью утилиты ls: действительно, создан файл "hello.o".
![Компиляция текста программы](image/4){ #fig:004 width=70% }

## Работа с расширенным синтаксисом командной строки NASM
Ввожу команду, которая скомпилирует файл hello.asm в файл obj.o, при этом в файл будут включены символы для отладки (ключ -g), также с помощью ключа -l будет создан файл листинга list.lst (рис. [-@fig:005]). Далее проверяю с помощью утилиты ls правильность выполнения команды. 
![Компиляция текста программы](image/5){ #fig:005 width=70% }

## Работа с компоновщиком LD
Передаю объектный файл hello.o на обработку компоновщику LD, чтобы получить исполняемый файл hello (рис. [-@fig:006]). Ключ -о задает имя создаваемого исполняемого файла. Далее проверяю с помощью утилиты ls правильность выполнения команды. 
![Передача объектного файла на обработку компоновщику](image/6){ #fig:006 width=70% }

Выполняю следующую команду (рис. [-@fig:007]). Исполняемый файл будет иметь имя main, т.к. после ключа -о было задано значение main. Объектный файл, из которого собран этот исполняемый файл, имеет имя obj.o
![Передача объектного файла на обработку компоновщику](image/7){ #fig:007 width=70% }

## Запуск исполняемого файла
Запускаю на выполнение созданный исполняемый файл hello (рис. [-@fig:008]).
![Запуск исполняемого файла](image/8){ #fig:008 width=70% }

## Выполнение заданий для самостоятельной работы.
С помощью утилиты cp создаю в текущем каталоге копию файла hello.asm с именем lab5.asm (рис. [-@fig:009]).
![Создание копии файла](image/9){ #fig:009 width=70% }

С помощью текстового редактора mousepad открываю файл lab5.asm и вношу изменения в программу так, чтобы она выводила мои имя и фамилию. (рис. [-@fig:010]).
![Изменение программы](image/10){ #fig:010 width=70% }

Компилирую текст программы в объектный файл (рис. [-@fig:011]). Проверяю с помощью утилиты ls, что файл lab5.o создан.
![Компиляция текста программы](image/11){ #fig:011 width=70% }

Передаю объектный файл lab5.o на обработку компоновщику LD, чтобы получить исполняемый файл lab5 (рис. [-@fig:012]).

![Передача объектного файла на обработку компоновщику](image/12){ #fig:012 width=70% }

Запускаю исполняемый файл lab5, на экран действительно выводятся мои имя и фамилия (рис. [-@fig:013]).

![Запуск исполняемого файла](image/13){ #fig:013 width=70% }

С помощью команд git add . и git commit добавляю файлы на GitHub, комментируя действие как добавление файлов для лабораторной работы №5 (рис. [-@fig:014]).

![Добавление файлов на GitHub](image/14){ #fig:014 width=70% }

Отправляю файлы на сервер с помощью команды git push (рис. [-@fig:015]).

![Отправка файлов](image/15){ #fig:015 width=70% }

# Выводы
При выполнении данной лабораторной работы я освоила процедуры компиляции и сборки программ, написанных на ассемблере NASM.




