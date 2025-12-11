# 🐧 Scripting Portfolio

- Author: [Alejandro Barrientos Escalante](https://github.com/beofalejandro)
- Version: 1.9.0
- Date: 2025-12-10
- Repository: [ATT](https://github.com/beofalejandro/ATT/tree/script-shell)

Bienvenido al repositorio de ejercicios prácticos. Esta colección de scripts está diseñada para acompañar el curso teórico, proporcionando experiencia práctica desde la navegación básica hasta la automatización avanzada y seguridad.

## 🚀 Primeros Pasos

Estos ejercicios están organizados por **Módulos**. Cada módulo tiene su propia carpeta y un **Script de Menú** principal que actúa como centro de control para los ejercicios de esa sección.

### 🔧 Requisitos Previos
* Un entorno Linux (Ubuntu, Debian, CentOS, Fedora, o WSL).
* Shell Bash (estándar en la mayoría de las distribuciones).
* **Opcional:** Tener `jq` instalado para el Módulo 8 (procesamiento de JSON).

## 🎮 Cómo Usar los Ejercicios

Cada módulo contiene un script de **Menú** (por ejemplo, `menu_module_1.sh`). Para practicar:

1.  Navega a la carpeta del proyecto.
2.  Ejecuta el menú del módulo que estás estudiando. Por ejemplo:

    ```bash
    ./final-project/main.sh
    ```

3.  Sigue las instrucciones en pantalla. Los scripts son **interactivos** y usan colores para facilitar el aprendizaje.

### ❌ La Regla de Oro: Salir con 'X'
En cualquier momento que el programa te pida una entrada (input)—ya sea dentro de un menú principal o ejecutando un ejercicio específico—puedes salir o regresar atrás escribiendo:

> **x** o  **X**

Escribir **x** cerrará inmediatamente el ejercicio actual o te regresará al menú anterior.

---

## 📂 Desglose de Módulos y Ejercicios

A continuación, se detalla qué encontrarás en cada módulo y cómo ejecutar sus ejercicios:

### 🔹 **Módulo 1** Introducción y Conceptos Básicos
**Objetivo:** Comprender el entorno Linux, rutas y permisos. 

* **`menu_module_1.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_paths.sh`)**: Te enseña interactivamente dónde estás (`pwd`), cómo crear carpetas y la diferencia entre rutas absolutas y relativas. 
    * **Ejercicio 2 (`ex2_permissions.sh`)**: Un simulador de permisos. Te permite aplicar códigos como `777` o `+x` a un archivo temporal y ver cómo cambian sus atributos de lectura/escritura/ejecución. 

### 🔹 **Módulo 2** Creación de Scripts
**Objetivo:** Aprender la estructura fundamental de un archivo `.sh`. 

* *Este módulo se cubre teóricamente en la creación de los propios archivos.*
* **Conceptos clave:** El uso del Shebang (`#!/bin/bash`), dar permisos con `chmod +x` y las formas de ejecución (`./script.sh` vs `bash script.sh`). 

### 🔹 **Módulo 3** Variables y Estructuras de Datos
**Objetivo:** Manejar información sin usar aritmética compleja. 

* **`menu_module_3.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_arrays.sh`)**: Aprende a definir listas (arrays) y acceder a elementos específicos usando su índice (ej. `[0]`, `[1]`). 
    * **Ejercicio 2 (`ex2_special_vars.sh`)**: Simula el paso de argumentos a un script. Verás cómo funcionan `$#` (conteo de argumentos) y `$@` (lista de todos los argumentos). 
    * **Ejercicio 3 (`ex3_strings.sh`)**: Practica la manipulación de texto, como cambiar extensiones de archivos o convertir texto a mayúsculas usando expansión de variables. 

### 🔹 **Módulo 4** Estructuras de Control
**Objetivo:** Controlar el flujo y la lógica del script. 

* **`menu_module_4.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_conditionals.sh`)**: Un comparador numérico que usa `if`, `elif` y `else` para determinar si un número es mayor, menor o igual a 5. 
    * **Ejercicio 2 (`ex2_loop_control.sh`)**: Demostración de un bucle `for` que cuenta del 1 al 5, pero usa `continue` para saltarse específicamente el número 3. 
    * **Ejercicio 3 (`ex3_while_loop.sh`)**: Una cuenta regresiva simple utilizando un bucle `while`, demostrando cómo ejecutar código mientras una condición sea verdadera. 

### 🔹 **Módulo 5** Entrada, Salida y Redirecciones
**Objetivo:** Interactuar con el usuario y manipular archivos. 

* **`menu_module_5.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_user_input.sh`)**: Prueba diferentes modos del comando `read`: input normal, input silencioso (para contraseñas) y input con límite de tiempo. 
    * **Ejercicio 2 (`ex2_redirections.sh`)**: Genera logs y errores falsos para ver cómo funcionan `>` (sobrescribir), `>>` (agregar) y `2>` (redirigir errores). 
    * **Ejercicio 3 (`ex3_pipes_tee.sh`)**: Crea una "tubería" (pipe) para filtrar archivos del sistema y guardar el resultado visualmente usando `tee`. 

### 🔹 **Módulo 6** Funciones y Modularización
**Objetivo:** Escribir código ordenado y reutilizable. 

* **`menu_module_6.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_functions.sh`)**: Define una función simple que saluda al usuario, demostrando el paso de parámetros internos (`$1`, `$2`). 
    * **Ejercicio 2 (`ex2_modules.sh`)**: Utiliza el comando `source` para cargar funciones desde un archivo externo (`mylib.sh`), simulando una librería. 
    * **Ejercicio 3 (`ex3_scope.sh`)**: Una demostración crítica sobre la diferencia entre variables globales y variables `local` dentro de funciones. 

### 🔹 **Módulo 7** Archivos Avanzados y Procesos
**Objetivo:** Tareas de administración del sistema y seguridad. 

* **`menu_module_7.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_mass_processing.sh`)**: Genera múltiples archivos `.log` falsos y los procesa todos automáticamente usando un bucle y wildcards (`*`). 
    * **Ejercicio 2 (`ex2_process_trap.sh`)**: Lanza un proceso en segundo plano (`&`) y te enseña a usar `trap` para detectar si el usuario intenta cancelar el script con Ctrl+C. 
    * **Ejercicio 3 (`ex3_security_check.sh`)**: Un validador de seguridad que verifica si un archivo existe, si es legible y rechaza caracteres peligrosos (inyección de comandos). 

### 🔹 **Módulo 8** Procesamiento de Texto y Optimización
**Objetivo:** Manipular datos complejos y mejorar el rendimiento. [cite: 1856-1857]

* **`menu_module_8.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_text_tools.sh`)**: Procesa un log "sucio" usando `grep` para buscar errores, `awk` para extraer IPs y `sed` para anonimizar datos. 
    * **Ejercicio 2 (`ex2_api_json.sh`)**: Simula una respuesta de API y extrae datos específicos (como el estado del servidor) usando `jq` o alternativas. 
    * **Ejercicio 3 (`ex3_optimization.sh`)**: Compara en tiempo real cuánto tarda en ejecutarse una tarea secuencialmente vs. paralelamente (usando background jobs). 

### 🔹 **Módulo 9** Automatización, Logs y Depuración
**Objetivo:** Profesionalizar los scripts para producción. [cite: 2182-2183]

* **`menu_module_9.sh`**: Ejecuta este archivo para ver las opciones.
    * **Ejercicio 1 (`ex1_debugging_modes.sh`)**: Te permite activar modos de depuración como `set -x` (ver trazas) o `set -e` (fallar al error) para encontrar bugs. 
    * **Ejercicio 2 (`ex2_logging_system.sh`)**: Un sistema de logs profesional que estampa la fecha/hora en cada mensaje y rota el archivo si crece demasiado. 
    * **Ejercicio 3 (`ex3_resilience.sh`)**: Implementa una función de "reintento" (retry) que intenta ejecutar un comando varias veces antes de rendirse si falla la red. 

-----

Made with ❤️ by [Alejandro Barrientos Escalante](https://github.com/beofalejandro) and [ESCALIA Corporation](https://github.com/ESCALIA-Corporation)
