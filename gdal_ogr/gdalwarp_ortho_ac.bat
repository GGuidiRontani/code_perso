gdalwarp -overwrite -s_srs EPSG:2154 -t_srs EPSG:3950 -of GTiff -cutline "\\volt\infogeo\UF_Acquisition\drone\preparation_mission\preparation_missions.gpkg" -csql "SELECT geom FROM entites WHERE lieu='fives_cail' AND etat='a faire'" -crop_to_cutline -dstnodata 0 -co COMPRESS=JPEG -r lanczos \\batzella\vuesaeriennes\orthos\2022\geo2france\orthophoto\2022_A_OrthoPCRS_MEL_0m05_RVB_COG_complete.tif E:\output.tif

gdal_translate -of GTiff -co COMPRESS=JPEG -r lanczos -a_srs EPSG:3950 -a_nodata 0 E:\output.tif \\batzella\modeles3D\2024\2024_lille_fives_cail\orthophotos\2022_lille_fives_cail_ortho5cm_cc50.tif

DEL E:\output.tif
