gdalwarp -of GTiff -co COMPRESS=DEFLATE -dstalpha -co BIGTIFF=IF_SAFER -co NUM_THREADS=ALL_CPUS -overwrite "path\in_raster.tif" "path\out_raster.tif"
