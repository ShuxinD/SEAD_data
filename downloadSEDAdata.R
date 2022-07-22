#' download SEDA data from the website
#' created by Shuxin D

dir_seda <- file.path(getwd(), "data", "downloaded_from_SEDA")  # Create file path
dir_seda <- "/media/qnap3/Shuxin/SEDA/downloaded_from_SEDA" # due to the nature of QNAPs I cannot store the data under homefolder
dir_seda

getOption("timeout")
options(timeout = 600)

# SEDA documentation
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_documentation_4.1.pdf", file.path(dir_seda, "seda_documentation_4.1.pdf"))

# shapefile - version 4.0
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_shapefiles_2019_4.0.zip", file.path(dir_seda,"seda_shapefiles_2019_4.0.zip"))
unzip(file.path(dir_seda,"seda_shapefiles_2019_4.0.zip"))

# crosswalk file - version 4.1
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_crosswalk_4.1.csv", file.path(dir_seda, "seda_crosswalk_4.1.csv"))

# geographical school district level - long format - cs - version 4.1
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_geodist_long_cs_4.1.csv", file.path(dir_seda,"seda_geodist_long_cs_4.1.csv"))

# school level - pooled format - gcs - version 4.1
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_school_pool_gcs_4.1.csv", file.path(dir_seda,"seda_school_pool_gcs_4.1.csv"))

# school level - pooled format - cs - version 4.1
download.file("https://stacks.stanford.edu/file/druid:db586ns4974/seda_school_pool_cs_4.1.csv", file.path(dir_seda,"seda_school_pool_cs_4.1.csv"))