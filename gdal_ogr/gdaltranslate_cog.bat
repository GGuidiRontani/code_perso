rem orthophotographies
rem creation liste des tuiles
dir /b /s "G:\2020_ortho_mel\rgb\*.tif" > "G:\2020_ortho_mel\tiles_list_mel.txt"

rem assemblage des tuiles
gdalbuildvrt -input_file_list "E:\2020_mel_ortho\orthophotos\tiles_list_mel.txt" -addalpha -a_srs EPSG:2154 "E:\2020_mel_ortho\orthophotos\mel.vrt"

rem production de l'ortho cog
gdal_translate -of COG -co COMPRESS=JPEG -co BIGTIFF=YES -co NUM_THREADS=ALL_CPUS -co RESAMPLING=LANCZOS -co OVERVIEWS=AUTO "E:\2020_mel_ortho\orthophotos\mel.vrt" "E:\2020_mel_ortho\orthophotos\mel_cog.tif"

xcopy "E:\2020_mel_ortho\orthophotos\mel_cog.tif" "path\out_raster.tif"

rem modele numerique
rem creation liste des tuiles
dir /b /s "path\*.tif" > "E:\0_en_cours\2020_cadstre_solaire\tiles_list.txt"

rem assemblage des tuiles
gdalbuildvrt -input_file_list "E:\0_en_cours\2020_cadstre_solaire\tiles_list.txt" -a_srs EPSG:2154 "E:\0_en_cours\2020_cadstre_solaire\irradiation_ann.vrt"

rem production de l'ortho cog
gdal_translate -a_srs EPSG:2154 -of COG -co COMPRESS=DEFLATE -co BIGTIFF=YES -co PREDICTOR=YES -co NUM_THREADS=20 -co RESAMPLING=LANCZOS -co MAX_Z_ERROR=0.01 -co OVERVIEWS=AUTO -co OVERVIEW_QUALITY=50 "E:\0_en_cours\2020_cadstre_solaire\irradiation_ann.vrt" "E:\0_en_cours\2020_cadstre_solaire\irradiation_annuelles.tif"
