gdalwarp -overwrite -s_srs EPSG:2154 -t_srs EPSG:3950 -of GTiff -cutline "path\preparation_missions.gpkg" -csql "SELECT geom FROM entites WHERE lieu='fives_cail' AND etat='a faire'" -crop_to_cutline -dstnodata 0 -co COMPRESS=JPEG -r lanczos "path\in_raster.tif" "path\out_raster.tif"

gdal_translate -of GTiff -co COMPRESS=JPEG -r lanczos -a_srs EPSG:3950 -a_nodata 0 "path\out_raster.tif" "path\in_raster.tif"

DEL E:\output.tif
