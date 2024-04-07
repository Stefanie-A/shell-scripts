#!/bin/bash

#This scripts backups files/directories and synchronizes them using the rysnc command.
#-a: archrive mode
#-v: verbios information
#N/B: The main file and the backup file should be in the same directory to prevent errors from occuring.


rysnc -av "/source/directory" "/destination/directory"

