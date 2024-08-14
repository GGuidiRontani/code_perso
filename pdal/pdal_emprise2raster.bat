D:
cd  D:\en_cours\temp_sdit
find -type f -name '*.e57' | D:\applications\rush.exe --jobs 2 "pdal pipeline E:\0000_git\code_perso\pdal\pdal_emprise2raster.json --readers.e57.filename={} --writers.gdal.filename=E:\0_en_cours\2023_sdit\nuages\index\{.}.tif"
