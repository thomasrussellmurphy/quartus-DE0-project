quartus-DE0-project
===================

Default project plus project creator for Terasic's DE0 Altera Cyclone III Development Boards

To create a new project folder for the first time (with defaults), do the following:

Set your working directory to quartus-DE0-project
cd DE0_TOP
sudo chmod +x create-new-project.sh
./create-new-project.sh "project name"

For a Python-only install:

cd DE0_TOP
sudo chmod +x create-new-project.py
./create-new-project.py "project name"

Your project is created in the "project_name" directory. Examine the scripts for details.

Omit the 'chmod' line after you've initialized the first project. For correct behavior, be sure to run the project creation script from within the DE0_TOP directory.
