#!/bin/bash

# Get the directory path of the script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Prompt the user for the folder name
read -p "Enter the fireName (e.g. Hayman): " fireName
read -p "Enter the transect name (e.g. Transect1 or HY1): " transectName
read -p "Enter the flight date (e.g. 11_07_23): " flightDate



# Create the folder
folder_name="${fireName}-${transectName}-${flightDate}"
folder_path="$script_dir/$folder_name"
mkdir "$folder_path"

#Create subfolders

folder_process="$folder_path/metashape"
mkdir "$folder_process"

folder_process_out="$folder_process/metashape_outputs"
mkdir "$folder_process_out"

folder_raw="$folder_path/raw_data"
mkdir "$folder_raw"

folder_meta="$folder_path/metadata"
mkdir "$folder_meta"

folder_out="$folder_path/final_outputs"
mkdir "$folder_out"

folder_i="$folder_path/intermediate_outputs"
mkdir "$folder_i"

cheight="$folder_i/canopy_height"
mkdir "$cheight"

cpcloud="$folder_i/classified_point_cloud"
mkdir "$cpcloud"

dtm="$folder_i/dtm"
mkdir "$dtm"

rgb="$folder_i/rgb_indices"
mkdir "$rgb"

texture="$folder_i/texture_indices"
mkdir "$texture"

crown="$folder_i/tree_crown"
mkdir "$crown"

top="$folder_i/tree_top"
mkdir "$top"

#Create metadate file
metadata_file="$folder_meta/metadata.txt"
echo "This data is for the $transectName transect at the $fireName fire. Raw data was collected on $flightDate. Boundaries actually flown are depicted in the spatial file in the Metadata directory.

All Metashape processing files AND outputs are in the Metashape directory.

Link to spreadsheet with flight data:


~Universal Processing Notes~
Raw data projection:
Processed projection:
Time in UTC

~Metashape processing notes~
See processing report (Metashape directory) for all processing notes

~Point cloud processing notes~
-Ground height:
-Neighborhood resolution:

~Additional notes~
-


" > "$metadata_file"
