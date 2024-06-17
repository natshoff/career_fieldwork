# Prepare CAREER UAS data for processing

CAREER data is processed by individual transect. To create the standardized CAREER UAS Data Structure, put the shell script [create_new_career_transect_file_structure.sh](https://github.com/TylerLMcIntosh/career_fieldwork/blob/main/code/create_new_career_transect_file_structure.sh) in the directory where you would like to create your transect subdirectory.

When you run this shell script, you will be asked for a few pieces of standardized information. From this user-supplied information, the script will generate the full structure outlined at the bottom of this document.

To move this full directory to Petalibrary for processing and storage, run the below line of code from your local command line. Make sure to insert the location of your directory, your identikey, and the year. You will be asked for your Identikey password and also receive a DuoPush.
```
scp -r LOCATION_OF_DIRECTORY YOUR_IDENTIKEY@login.rc.colorado.edu:/pl/active/earthlab/career/SUMMER-2024
```

**Proceed to [02: Process UAS Data](https://github.com/TylerLMcIntosh/career_fieldwork/blob/main/workflows/02_process_uas_data.md).**

** File Structure
```
C:.
├───final_outputs                    # This subdirectory is where all finalized outputs from Nayani's code go
├───intermediate_outputs             # This subdirectory is where all processing files from Nayani's code go
│   ├───canopy_height
│   ├───classified_point_cloud
│   ├───dtm
│   ├───rgb_indices
│   ├───texture_indices
│   ├───tree_crown
│   └───tree_top
├───metadata                          # Metadata goes here, primarily a spatial file showing the actual area flown
├───metashape                         # Metashape processing files can go directly in this directory
│   └───metashape_outputs             # This subdirectory is where all Metashape outputs should go (i.e. LAZ files, orthomosaic, processing report)
└───raw_data                          # This subdirectory is where all raw data for the transect should be put
```
