REM l'utilisation des ^ associés à des renvois à la ligne permet de scinder les étapes d'une commande pour en faciliter l'analyse tout en restant executable

REM indiquer le disque
E:
REM indiquer le répertoire
cd E:\repo
REM appel outil
gdal_translate ^
REM appel option
-of COG ^
-co COMPRESS=DEFLATE ^
-co BIGTIFF=YES ^
-co NUM_THREADS=ALL_CPUS ^
-co RESAMPLING=LANCZOS ^
-co OVERVIEWS=AUTO ^
REM attention, définition input output sur le même ligne
"input.tif" "output.tif"
