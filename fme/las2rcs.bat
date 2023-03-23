REM se deplacer dans le répertoire ou sont les donnees brutes
mkdir .\temp
find -type f -name "*.laz" | D:\applications\rush.exe --jobs 15 "pdal pipeline E:\0000_git\code_perso\pdal\pdal_range_reproj.json --readers.las.filename={} --writers.las.filename=.\temp\{.}.laz

mkdir .\temp_sol_bati_rcs
cd ..\temp
find -type f -name "*.laz" | D:\applications\rush.exe --jobs 2 "D:\applications\fme\2020_2_1\fme.exe E:\0000_git\code_perso\fme\las2recap_cc50.fmw --SourceDataset_LAS ".\temp\{}" --DestDataset_RECAP ".\temp_sol_bati_rcs\{.}"

REM cd E:\0_en_cours\2018_lidar_cad\temp_sol_bati_rcs
REM E:\0_en_cours\2018_lidar_cad\codes\rename.bat

REM mkdir E:\0_en_cours\2018_lidar_cad\2018_lidar_sol_bati_autocad

REM dir /b /s "*.rcs" > "E:\0_en_cours\2018_lidar_cad\tiles.txt"
REM FOR /f "delims=" %%A IN ('TYPE E:\0_en_cours\2018_lidar_cad\tiles.txt') DO move %%A E:\0_en_cours\2018_lidar_cad\2018_lidar_sol_bati_autocad
