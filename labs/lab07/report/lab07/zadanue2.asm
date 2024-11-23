%include 'in_out.asm'

section .data
    msg1 db 'Введите значение x: ', 0
    msg2 db 'Введите значение a: ', 0
    msg3 db 'Результат вычислений: ', 0
    buffer db 11 dup(0)  ; Буфер для преобразования результата в строку
    zero_msg db 'Результат: 0', 0
    error_msg db 'Ошибка: некорректный ввод', 0  ; Сообщение об ошибке

section .bss
    x resb 10
    a resb 10

section .text
    global _start

_start:
    ; Запрос значения x
    mov eax, msg1
    call sprint

    ; Ввод значения x
    mov ecx, x
    mov edx, 10
    call sread

    ; Запрос значения a
    mov eax, msg2
    call sprint

    ; Ввод значения a
    mov ecx, a
    mov edx, 10
    call sread

    ; Преобразование ввода x
    mov ecx, x          ; Считываем x
    call atoi
    mov ebx, eax        ; Сохраняем значение x в ebx для дальнейших вычислений

    ; Преобразование ввода a
    mov ecx, a          ; Считываем a
    call atoi

    ; Проверяем, чтобы a не было отрицательным
    cmp eax, 0
    jl print_error       ; Если a < 0, выводим ошибку

    cmp eax, 1
    je calculate_case_1  ; Если a = 1, перейти в case 1

    ; Если a != 1, выполняем a^2
    imul eax, eax        ; a = a * a
    jmp store_result

calculate_case_1:
    ; Если a = 1, f(x) = 10 + x
    add ebx, 10          ; ebx = x + 10
    mov eax, ebx         ; Перемещаем результат в eax
    jmp store_result

store_result:
    ; Проверка значения
    test eax, eax        ; Проверяем, не равно ли eax 0
    jz print_zero        ; Если равно, выводим '0'

    ; Преобразуем eax в строку и сохраняем в buffer
    call int_to_string

    ; Вывод результата
    mov eax, msg3
    call sprint          ; Вывод сообщения 'Результат вычислений: '
    
    mov ecx, buffer     ; Загружаем адрес буфера с результатом
    call sprint          ; Вывод результата в строковом виде
    jmp finish

print_zero:
    mov ecx, zero_msg
    call sprint          ; Вывод 'Результат: 0'
    jmp finish

print_error:
    ; Выводим сообщение об ошибке
    mov ecx, error_msg
    call sprint
    jmp finish

finish:
    call quit            ; Завершение программы

int_to_string:
    mov edi, buffer + 10 ; Указатель на конец буфера
    mov ecx, 0           ; Счетчик для количества цифр
    mov ebx, 10          ; Делитель (основание)
    
    ; Обработка нуля отдельно
    test eax, eax
    jnz convert_loop
    
    ; В случае нуля, записываем '0'
    mov byte [edi - 1], '0'
    dec edi
    jmp end_int_to_string

convert_loop:
    xor edx, edx         ; Обнуление остатка
    div ebx               ; Делим eax на 10
    add dl, '0'          ; Преобразуем в символ
    dec edi               ; Двигаем указатель влево
    mov [edi], dl        ; Сохраняем символ в буфер
    inc ecx              ; Увеличиваем счетчик
    test eax, eax        ; Проверяем, не ноль ли у нас
    jnz convert_loop      ; Если не ноль, продолжаем

end_int_to_string:
    mov eax, edi         ; Возвращаем указатель на начала строки
    ret



