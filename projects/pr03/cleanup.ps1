# cleanup.ps1

# Укажите директорию, в которой хотите удалить файлы
# По умолчанию текущая директория
$directory = "."

# Удаление файлов
Get-ChildItem -Path $directory -Filter *.obj -Recurse | Remove-Item -Force
Get-ChildItem -Path $directory -Filter *.ilk -Recurse | Remove-Item -Force

Get-ChildItem -Path $directory -Filter *.pdb -Recurse | Remove-Item -Force
Get-ChildItem -Path $directory -Filter *.exe -Recurse | Remove-Item -Force

# Дополнительные расширения файлов можно добавить аналогичным образом
# Get-ChildItem -Path $directory -Filter *.other_extension -Recurse | Remove-Item -Force

Write-Host "Cleanup complete!"
