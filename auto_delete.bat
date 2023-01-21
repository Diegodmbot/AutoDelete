@echo off
	attrib -r -s -h "C:\Users\Diegodm\Downloads\*.*" /s /d
	forfiles -p "C:\Users\Diegodm\Downloads" -s -d -30 -c "cmd /c del /q @path"
	forfiles -p "C:\Users\Diegodm\Downloads" -s -d -30 -c "cmd /c if @isdir==TRUE rd /s /q @path"
end