#!/bin/bash

# Crear un archivo de texto llamado "mytext" y escribir "Hola Mundo"
echo "Creando el archivo de texto mytext..."
if [ -f "mytext" ]; then
  echo "El archivo mytext ya existe. Eliminándolo..."
  rm mytext
  echo "Archivo mytext eliminado."
fi
echo "Hola Mundo" > mytext
echo "Archivo mytext creado con el contenido 'Hola Mundo'."
sleep 1  # Delay de 1 segundo

# Mostrar el contenido del archivo mytext
echo "Mostrando el contenido del archivo mytext:"
cat mytext
sleep 1  # Delay de 1 segundo

# Verificar si el directorio "backup" ya existe, eliminarlo si es necesario
if [ -d "backup" ]; then
  echo "El directorio backup ya existe. Eliminándolo..."
  rm -r backup
  echo "Directorio backup eliminado."
fi

# Crear un subdirectorio llamado "backup"
echo "Creando el directorio backup..."
mkdir backup
echo "Directorio backup creado."
sleep 1  # Delay de 1 segundo

# Mover el archivo "mytext" al subdirectorio "backup"
echo "Moviendo el archivo mytext al subdirectorio backup..."
mv mytext backup/
echo "Archivo mytext movido a backup."
sleep 1  # Delay de 1 segundo

# Listar el contenido del subdirectorio "backup"
echo "Listando el contenido del subdirectorio backup:"
ls backup
sleep 1  # Delay de 1 segundo

# Eliminar el archivo "mytext" del subdirectorio "backup"
echo "Eliminando el archivo mytext del subdirectorio backup..."
rm backup/mytext
echo "Archivo mytext eliminado."
sleep 1  # Delay de 1 segundo

# Eliminar el subdirectorio "backup"
echo "Eliminando el directorio backup..."
rmdir backup
echo "Directorio backup eliminado."
sleep 1  # Delay de 1 segundo

# Finalización del script
echo "Script terminado :D."
