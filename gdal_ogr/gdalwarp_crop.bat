gdalwarp -overwrite -s_srs EPSG:2154 -t_srs EPSG:27561 -of GTiff -cutline "\\volt\infogeo\UF_Acquisition\drone\preparation_mission\preparation_missions.gpkg" -csql "SELECT geom FROM entites WHERE ville='radinghem' AND etat='a faire'" -crop_to_cutline -of "GTiff" -co "COMPRESS=DEFLATE" -overwrite -dstnodata "-9999" "\\batzella.lmcu.fr\lidar\2020\vansteelandt\raster\mnt\mnt_lerczstd.tif" "E:\0_en_cours\2022_radinghem_haute_rue\temp_l1.tif"
