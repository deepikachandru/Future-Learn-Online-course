---
output:
  pdf_document: default
  html_document: default
---
# FutureLearn

Welcome to Future Learn MOOC data Analysis!

## How to run the project?

Unzip the submitted project template directory. The project could be run by opening the FutureLearn folder and navigating to Reports. Open Analysis Report.Rmd in R Studio and knit to PDF. 

## Project Template

This project contains a main project template folder named FutureLearn which contains subsequent folders and files for carrying out the CRISP DM Cycles.

## Folder Structure

The project contains 5 main folders data/, munge/, reports/, cache/, and config/

### data/

Data folder contains the Future Learn MOOC Cyber security data set which are CSV files from run 1-7 of the course. This data is gathered by the Future Learn team and the course is offered by Newcastle University.

### munge/

Munge folder contains two R scripts that are used for pre-processing the data.

* 01-A.R
* 02-A.R

These files run in sequential order based on file names.

### reports/

Reports folder contains the Analysis-Report involving two CRISP DM cycles. It also contains Reflective Log highlighting my experience in the whole project. I have also used an image file in the report which has been placed in this folder.

* Analysis Report.Rmd
* Reflective Log.pdf
* FutureLearn-MOOC.png

### cache/

Cache contains all the data files once the project is loaded. In addition to this it contains pre-processed data from munge scripts which are cached. The cached data includes:

* Enroll_filtered
* MergedData
* Archetype_filtered

### config/

This contains a global.dcf file that has project level configurations. The following are the configurations made:

* cache_loading: TRUE and munging: FALSE; so that pre-processed data always loads from Cache folder instead of entire munge scripts
* load_libraries: TRUE; to load all the libraries included
* 2 additional libraries are added: ggpubr,treemapify (ggpubr for grid arrangement and treemapify for Treemap chart)

## Additional information

* Git log is placed in the root of Project template folder. (i.e) in the main FutureLearn directory itself.
