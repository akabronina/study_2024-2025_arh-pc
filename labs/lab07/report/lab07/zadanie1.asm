%include 'in_out.asm'

section .data
    msg1 db 'Введите B: ', 0h
    msg2 db 'Наименьшее число: ', 0h
    A dd 83      ; Задаем A = 83
    B dd 73      ; Задаем B = 73
    C dd 30      ; Задаем C = 30

section .bss
    min resb 10  ; Для хранения минимального значения

section .text
    global _start

_start:
    ;---------- Инициализация минимального значением A
    mov ecx, [A] ; Загрузка A в ecx
    mov [min], ecx ; Установка начального min как A

    ;---------- Сравнение A и B
    mov ecx, [B] ; Загрузка B в ecx
    cmp ecx, [min] ; Сравнение B с min
    jl set_min_b ; Если B < min, переходим к set_min_b

    ;---------- Сравнение текущего min и B
set_min_b:
    mov [min], ecx ; Если B меньше, то обновляем min

    ;---------- Сравнение min и C
    mov ecx, [C] ; Загрузка C в ecx
    cmp ecx, [min] ; Сравнение C с min
    jl set_min_c ; Если C < min, переходим к set_min_c

    ;---------- Вывод результата
set_min_c:
    mov [min], ecx ; Если C меньше, то обновляем min

    ;---------- Вывод результата
    mov eax, msg2 ; Подготовка к выводу сообщения
    call sprint    ; Вывод 'Наименьшее число: '
    mov eax, [min] ; Получаем значение min
    call iprintLF  ; Вывод min
    call quit      ; Выход из программы

