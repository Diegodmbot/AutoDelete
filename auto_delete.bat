@echo off
	set ruta=ruta\directorio\objetivo
	attrib -r -s -h "%ruta%\*.*" /s /d
	forfiles -p "%ruta%" -s -d -30 -c "cmd /c del /q @path"
	forfiles -p "%ruta%" -s -d -30 -c "cmd /c if @isdir==TRUE rd /s /q @path"
end