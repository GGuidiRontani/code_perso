REM se déplacer dans le répertoire de travail
E:
cd E:\0000_test\2024_cloudcompare_commandline\moche

REM création d'une variable avec pour condition extension obj et incluant déjà l'option global shift
setlocal EnableDelayedExpansion

for %%i in (*.obj) do set "files=-o -GLOBAL_SHIFT AUTO "%%i" !files!"

REM l.14-20 commande de fusion avec CloudCompare
REM l.14 attention, chemin absolu vers l'executable
REM l.16 untilisation de la variable
D:\applications\cloudcompare\2_x_alpha\CloudCompare.exe ^
-SILENT ^
%files% ^
-MERGE_MESHES ^
-M_EXPORT_FMT OBJ ^
-AUTO_SAVE OFF ^
-SAVE_MESHES file "E:\0000_test\2024_cloudcompare_commandline\test.obj"