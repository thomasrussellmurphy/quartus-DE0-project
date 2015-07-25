quartus-DE0-project
===================

Default project plus project creator for Terasic's DE0 Altera Cyclone III Development Boards. Uses the default setting assignments from Terasic for the DE0 in *assignment_defaults.qdf*. Some settings are overridden in the QSF.

To create a new project folder for the first time (with defaults), do the following:

Set your working directory to `quartus-DE0-project/DE0_TOP`
```
python create-new-project.py "project name"
```

Your project is created in a new directory `project_name` in the `quartus-DE0-project` directory. The script checks if a file or directory exists with the desired name and cleanly exits with no filesystem modifications in the case of a conflict. You must run the project creation script from within the `DE0_TOP` directory. The project's name must be a valid Verilog-2001 module identifier when spaces are replaced with underscores.

Alternatively, the project creation script can be made executable:

```
chmod +x create-new-project.py
```
