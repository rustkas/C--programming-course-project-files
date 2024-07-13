#!/bin/bash

# Укажите директорию, в которой хотите удалить файлы
# По умолчанию текущая директория
directory="."

# Удаление файлов с расширением .obj
find "$directory" -type f -name "*.obj" -exec rm -f {} +

# Удаление файлов с расширением .ilk
find "$directory" -type f -name "*.ilk" -exec rm -f {} +

# Удаление файлов с расширением .pdb
find "$directory" -type f -name "*.pdb" -exec rm -f {} +

# Удаление файлов с расширением .exe
find "$directory" -type f -name "*.exe" -exec rm -f {} +

# Дополнительные расширения файлов можно добавить аналогичным образом
# find "$directory" -type f -name "*.other_extension" -exec rm -f {} +

echo "Cleanup complete!"
