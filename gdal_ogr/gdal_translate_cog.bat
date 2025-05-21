rem creation liste des tuiles
dir /b /s "path\*.tif" > "path\liste.txt"

rem assemblage des tuiles
gdalbuildvrt ^
-input_file_list "path\liste.txt" ^
-addalpha ^
-a_srs EPSG:2154 ^
"path\raster_virtuel.vrt" 

rem production de l'ortho cog
gdal_translate ^
-of COG ^
-co COMPRESS=JPEG ^
-co BIGTIFF=YES ^
-co NUM_THREADS=ALL_CPUS ^
-co RESAMPLING=LANCZOS ^
-co OVERVIEWS=AUTO ^
"path\raster_virtuel.vrt" "path\raster.tif" 
