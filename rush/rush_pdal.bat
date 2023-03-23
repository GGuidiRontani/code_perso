cd  input_folder
find -type f -name '*.ext' | D:\applications\rush.exe --jobs 20 "pdal pipeline pipeline.json --readers.las.filename={} --writers.las.filename=output_folder\{.}.ext"
