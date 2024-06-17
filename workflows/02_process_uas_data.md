# Process CAREER UAS Data

This workflow outlines how to process CAREER UAS data using Metashape on CU Boulder's research computing. Note that CAREER transects can be time-consuming to process, but that Metashape will allow you to open up multiple instances of it and process in both (To open another Metashape window, go to Terminal, create a new Terminal tab, and then run "source ~/.metashape" and "metashape" again.

## Access CU Research Computing via OnDemand
* Go to CU OnDemand: https://ondemand.rc.colorado.edu/
* Sign in - If you do not have access to CURC, see below ("Getting CURC Access")
* Start desktop (top nav bar, “Interactive Apps”, “Core desktop”)
  * Set the number of hours you expect to use the desktop (over-estimate!)
  * Set the number of cores, either 8 or 16 usually
* Wait for the job to start. It will be ‘Queued’ for a little while, exact time totally depends on current demand.
* Open the Terminal and type the following commands:
  * source ~/.metashape
  * metashape
* Before the FIRST time you ever save anything with Metashape, run this line of code from the terminal:
  * echo "umask 0000" >> ~/.metashape
  * This will ensure that all of your Metashape files and directories have open permissions (the default settings are a pain)

### Getting CURC Access
If the user has a CU Identikey, they can just sign up for an account as normal at [https://rcamp.rc.colorado.edu/accounts/account-request/create/verify/ucb]. Once they have an account they can be added to any user groups/accounts on the system that they need to access Earthlab software/files. Have the Macrosystems project manager email Research Computing Help (rc-help@colorado.edu) and ask for them to have access to Earth Lab petalibrary files and Metashape.
 
If the user does not have an Identikey, you can request one through the CU POI or Research Affiliate process ([see Earth Lab's guide to this process](https://github.com/earthlab/earth-lab-operations/wiki/CU-Research-Affiliates-&-Persons-of-Interest-(POIs))). Once that process is finished, the user can sign up for a CURC account per the above instructions.


# Process the data using Metashape

## Document that you are starting the process
* Before starting to process imagery, check the [data processing spreadsheet](https://docs.google.com/spreadsheets/d/1QifnM6ORmHZaS2IsCR-tbr5HOFIdyin8sbgU08rIpkE/edit?usp=sharing) to make sure that nobody has done the transect you are about to do. Write down that you are starting processing in by putting "YOUR_INITIALS in process" in the orthomosaic column of the transect you are working on.

## Process in Metashape


## Document that you've finished the process
* Make sure to mark down that the processing is complete on the [data processing spreadsheet](https://docs.google.com/spreadsheets/d/1QifnM6ORmHZaS2IsCR-tbr5HOFIdyin8sbgU08rIpkE/edit?usp=sharing) by putting your initials in the column of each output

