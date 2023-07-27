::CREATION liste tout éléments
FOR /D %%A IN (path\*.*) DO (DIR /b /a-d /s >> path\liste.txt "%%A\")

::CREATION liste filtrée
dir /b /s "path\*.extension" > "path\liste.txt"

::copie xcopy déplacement move
FOR /f "delims=" %%A IN ('TYPE "path\liste.txt"') DO xcopy %%A path\

/OS ordonner par taille
/s pour chemin complet
/b pour liste simple