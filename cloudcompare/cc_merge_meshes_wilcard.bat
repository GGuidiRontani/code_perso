REM se déplacer dans le répertoire de travail
REM 	modifier l.3 col.1 et l.4 col.4
Disk:
cd path

REM création d'une variable avec pour condition extension obj et incluant déjà l'option global shift
REM 	modifier l.10 col.15
setlocal EnableDelayedExpansion

for %%i in (*.ext) do set "files=-o -GLOBAL_SHIFT AUTO "%%i" !files!"

REM l.14-20 commande de fusion avec CloudCompare
REM l.14 attention, chemin absolu vers l'executable
REM 	modifier l.16 col.1
REM l.16 utilisation de la variable
REM l.22 appel de l'extension en sortie (par ex. OBJ)
REM 	modifier l.24 col.15
REM l.24 chemin absolu vers l'output
REM 	modifier l.26 col.20
path\CloudCompare.exe ^
-SILENT ^
%files% ^
-MERGE_MESHES ^
-M_EXPORT_FMT EXT ^
-AUTO_SAVE OFF ^
-SAVE_MESHES file "path\test.obj"