section .data
    mensaje1 db 'PORTADA', 0xA, 0xD  ; Título de la portada
    mensaje2 db 'Nombre: Leonel Guerrero Enciso', 0xA, 0xD  ; Nombre del alumno
    mensaje3 db 'Edad: 23 años', 0xA, 0xD  ; Edad del alumno
    mensaje4 db 'Carrera: Ingeniería en Computacion', 0xA, 0xD  ; Carrera del alumno
    mensaje5 db 'Fecha: 09 de abril de 2024', 0xA, 0xD  ; Fecha de la portada
    finMensaje db 0  ; Byte nulo para indicar el final del mensaje

section .text
    global _start

_start:
    ; Imprimir mensaje1 (Título de la portada)
    mov eax, 4           ; Cargar la función de servicio de impresión de cadena
    mov ebx, 1           ; Cargar el descriptor de archivo de salida estándar (stdout)
    mov ecx, mensaje1    ; Cargar la dirección del mensaje1 en ECX
    mov edx, 17          ; Cargar la longitud del mensaje1 (incluyendo caracteres de nueva línea)
    int 0x80             ; Llamar a la interrupción del sistema para imprimir el mensaje1

    ; Imprimir mensaje2 (Nombre del alumno)
    mov eax, 4           ; Cargar la función de servicio de impresión de cadena
    mov ecx, mensaje2    ; Cargar la dirección del mensaje2 en ECX
    mov edx, 21          ; Cargar la longitud del mensaje2 (incluyendo caracteres de nueva línea)
    int 0x80             ; Llamar a la interrupción del sistema para imprimir el mensaje2

    ; Imprimir mensaje3 (Edad del alumno)
    mov eax, 4           ; Cargar la función de servicio de impresión de cadena
    mov ecx, mensaje3    ; Cargar la dirección del mensaje3 en ECX
    mov edx, 15          ; Cargar la longitud del mensaje3 (incluyendo caracteres de nueva línea)
    int 0x80             ; Llamar a la interrupción del sistema para imprimir el mensaje3

    ; Imprimir mensaje4 (Carrera del alumno)
    mov eax, 4           ; Cargar la función de servicio de impresión de cadena
    mov ecx, mensaje4    ; Cargar la dirección del mensaje4 en ECX
    mov edx, 32          ; Cargar la longitud del mensaje4 (incluyendo caracteres de nueva línea)
    int 0x80             ; Llamar a la interrupción del sistema para imprimir el mensaje4

    ; Imprimir mensaje5 (Fecha de la portada)
    mov eax, 4           ; Cargar la función de servicio de impresión de cadena
    mov ecx, mensaje5    ; Cargar la dirección del mensaje5 en ECX
    mov edx, 24          ; Cargar la longitud del mensaje5 (incluyendo caracteres de nueva línea)
    int
