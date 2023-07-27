::CREATION liste
FOR /D %%A IN (path\*.*) DO (DIR /b /a-d /s >> path\liste.txt "%%A\")

::deplacement
FOR /f "delims=" %%A IN ('TYPE path\liste.txt') DO move %%A output_dir\
