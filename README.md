# Macros
A copy of my favorite macros (all purged) are available for use here. Feel free to copy,
modify, edit, and use however you would like. The .do file is my ModelSim script.
It takes in the filename as a parameter and then compiles and runs the simulations.

### To use the .ahk:
- Download AutoHotKey and click on the file's name to run the script

### To use the .do:
- Open ModelSim and make a project like usuall. When its time for the testbench simulation,
  - type in: `do <MacroName>.do <FileName_tb>` with filename_tb not having the file extension
    .v or .vhd into the transcript window (ModelSim's built-in Command Line window)
- ModelSim should then execute everything in the file sequentially.

## Note: 
AutoHotKey is necessary to compile and/or run the .ahk scripts, which also means
that a Windows machine is needed to take advantage of them.
