#!/bin/bash

# Imprimir un mensaje "Hello World"
echo "Hola este es el comando de Hello world"
echo "Imprimiendo 'Hello World'."
echo "Hello World"
sleep 1  # Delay de 1 segundo

# Listar el contenido del directorio actual
echo "Listando el directorio actual"
ls
sleep 1  # Delay de 1 segundo

# Verificar si el directorio Test ya existe, eliminarlo si es necesario
if [ -d "Test" ]; then
  echo "El directorio Test ya existe. Eliminándolo..."
  rm -r Test
  echo "Directorio Test eliminado."
fi

# Crear un directorio llamado "Test"
echo "Creando el directorio con el nombre Test"
mkdir Test
echo "Directorio creado correctamente..."
sleep 1  # Delay de 1 segundo

# Cambiarse al directorio Test
echo "Cambiándose al directorio Test"
cd Test
echo "Se cambió a Test correctamente..."
sleep 1  # Delay de 1 segundo

# Listar el contenido del directorio Test (debería estar vacío)
echo "Listando el contenido del directorio Test"
ls
sleep 1  # Delay de 1 segundo

# Finalización del script
echo "Script terminado :D!!"
