dir /b /s "F:\nuages\2020_lidar\laz_tuiles_500_class\*.laz" > "F:\nuages\2020_lidar\tiles_produites.txt"

gdaltindex -f GPKG "E:\0_en_cours\2022_fromelles\index_rasters.gpkg "path\*.tif"
