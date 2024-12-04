%include 'in_out.asm'
SECTION .text
global _start
_start:
pop ecx ; Извлекаем из стека в `ecx` количество

pop edx ; Извлекаем из стека в `edx` имя программы

sub ecx, 1 ; Уменьшаем `ecx` на 1 (количество

next:
cmp ecx, 0 ; проверяем, есть ли еще аргументы
jz _end ; если аргументов нет выходим из цикла

pop eax ; иначе извлекаем аргумент из стека
call sprintLF ; вызываем функцию печати
loop next ; переход к обработке следующего

_end:
call quit